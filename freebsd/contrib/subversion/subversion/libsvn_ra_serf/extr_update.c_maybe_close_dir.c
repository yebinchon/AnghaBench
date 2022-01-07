
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_7__ {TYPE_1__* editor; } ;
typedef TYPE_2__ report_context_t ;
struct TYPE_8__ {int * pool; int dir_baton; TYPE_2__* ctx; int remove_props; scalar_t__ ref_count; struct TYPE_8__* parent_dir; } ;
typedef TYPE_3__ dir_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;
struct TYPE_6__ {int (* close_directory ) (int ,int *) ;int (* change_file_prop ) (int ,int ,int *,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this_key (int *) ;
 int ensure_dir_opened (TYPE_3__*,int *) ;
 int stub1 (int ,int ,int *,int *) ;
 int stub2 (int ,int *) ;
 int * svn_error_trace (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
maybe_close_dir(dir_baton_t *dir)
{
  apr_pool_t *scratch_pool = dir->pool;
  dir_baton_t *parent = dir->parent_dir;
  report_context_t *ctx = dir->ctx;

  if (--dir->ref_count)
    {
      return SVN_NO_ERROR;
    }

  SVN_ERR(ensure_dir_opened(dir, dir->pool));

  if (dir->remove_props)
    {
      apr_hash_index_t *hi;

      for (hi = apr_hash_first(scratch_pool, dir->remove_props);
           hi;
           hi = apr_hash_next(hi))
        {
          SVN_ERR(ctx->editor->change_file_prop(dir->dir_baton,
                                                apr_hash_this_key(hi),
                                                ((void*)0) ,
                                                scratch_pool));
        }
    }

  SVN_ERR(dir->ctx->editor->close_directory(dir->dir_baton, scratch_pool));

  svn_pool_destroy(dir->pool );

  if (parent)
    return svn_error_trace(maybe_close_dir(parent));
  else
    return SVN_NO_ERROR;
}
