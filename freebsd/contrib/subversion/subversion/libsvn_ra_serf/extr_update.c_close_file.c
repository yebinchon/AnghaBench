
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_9__ {TYPE_1__* editor; int add_props_included; } ;
typedef TYPE_2__ report_context_t ;
struct TYPE_10__ {int pool; int final_md5_checksum; int file_baton; scalar_t__ url; int base_rev; int found_lock_prop; scalar_t__ lock_token; scalar_t__ remove_props; TYPE_4__* parent_dir; } ;
typedef TYPE_3__ file_baton_t ;
struct TYPE_11__ {TYPE_2__* ctx; } ;
typedef TYPE_4__ dir_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;
struct TYPE_8__ {int (* close_file ) (int ,int ,int *) ;int (* change_file_prop ) (int ,int ,int *,int *) ;} ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_ENTRY_LOCK_TOKEN ;
 int SVN_RA_SERF__WC_CHECKED_IN_URL ;
 int * apr_hash_first (int *,scalar_t__) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this_key (int *) ;
 int ensure_file_opened (TYPE_3__*,int *) ;
 int maybe_close_dir (TYPE_4__*) ;
 int stub1 (int ,int ,int *,int *) ;
 int stub2 (int ,int ,int *,int *) ;
 int stub3 (int ,int ,int *,int *) ;
 int stub4 (int ,int ,int *) ;
 int svn_checksum_to_cstring (int ,int *) ;
 int svn_pool_destroy (int ) ;
 int * svn_string_create (scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
close_file(file_baton_t *file,
           apr_pool_t *scratch_pool)
{
  dir_baton_t *parent_dir = file->parent_dir;
  report_context_t *ctx = parent_dir->ctx;

  SVN_ERR(ensure_file_opened(file, scratch_pool));


  if (file->remove_props)
    {
      apr_hash_index_t *hi;

      for (hi = apr_hash_first(scratch_pool, file->remove_props);
           hi;
           hi = apr_hash_next(hi))
        {
          SVN_ERR(ctx->editor->change_file_prop(file->file_baton,
                                                apr_hash_this_key(hi),
                                                ((void*)0) ,
                                                scratch_pool));
        }
    }
  if (!ctx->add_props_included
      && file->lock_token && !file->found_lock_prop
      && SVN_IS_VALID_REVNUM(file->base_rev) )
    {
      SVN_ERR(ctx->editor->change_file_prop(file->file_baton,
                                            SVN_PROP_ENTRY_LOCK_TOKEN,
                                            ((void*)0),
                                            scratch_pool));
    }

  if (file->url)
    {
      SVN_ERR(ctx->editor->change_file_prop(file->file_baton,
                                            SVN_RA_SERF__WC_CHECKED_IN_URL,
                                            svn_string_create(file->url,
                                                              scratch_pool),
                                            scratch_pool));
    }


  SVN_ERR(ctx->editor->close_file(file->file_baton,
                                  svn_checksum_to_cstring(
                                        file->final_md5_checksum,
                                        scratch_pool),
                                  scratch_pool));

  svn_pool_destroy(file->pool);

  SVN_ERR(maybe_close_dir(parent_dir));

  return SVN_NO_ERROR;
}
