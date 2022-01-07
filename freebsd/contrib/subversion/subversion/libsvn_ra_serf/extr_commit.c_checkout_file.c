
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_5__ {int pool; TYPE_3__* commit_ctx; int working_url; int base_revision; int relpath; TYPE_2__* parent_dir; } ;
typedef TYPE_1__ file_context_t ;
struct TYPE_6__ {struct TYPE_6__* parent_dir; int relpath; int working_url; scalar_t__ added; } ;
typedef TYPE_2__ dir_context_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {int session; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int get_version_url (char const**,int ,int ,int ,int *,int *,int *) ;
 int retry_checkout_node (int *,TYPE_3__*,char const*,int ,int *) ;
 int * svn_error_trace (int ) ;
 int svn_path_url_add_component2 (int ,int ,int ) ;
 int svn_relpath_skip_ancestor (int ,int ) ;

__attribute__((used)) static svn_error_t *
checkout_file(file_context_t *file,
              apr_pool_t *scratch_pool)
{
  dir_context_t *parent_dir = file->parent_dir;
  const char *checkout_url;




  while (parent_dir)
    {
      if (parent_dir->added)
        {

          SVN_ERR_ASSERT(parent_dir->working_url);
          file->working_url = svn_path_url_add_component2(
                                    parent_dir->working_url,
                                    svn_relpath_skip_ancestor(
                                      parent_dir->relpath, file->relpath),
                                    file->pool);
          return SVN_NO_ERROR;
        }
      parent_dir = parent_dir->parent_dir;
    }

  SVN_ERR(get_version_url(&checkout_url,
                          file->commit_ctx->session,
                          file->relpath, file->base_revision,
                          ((void*)0), scratch_pool, scratch_pool));


  return svn_error_trace(retry_checkout_node(&file->working_url,
                                             file->commit_ctx, checkout_url,
                                              file->pool, scratch_pool));
}
