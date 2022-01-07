
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {char* working_url; char* url; int pool; TYPE_2__* commit_ctx; struct TYPE_4__* parent_dir; int relpath; scalar_t__ added; } ;
typedef TYPE_1__ dir_context_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {char* baseline_url; char* vcc_url; } ;


 int SVN_ERR_ASSERT (char*) ;
 int * SVN_NO_ERROR ;
 int retry_checkout_node (char const**,TYPE_2__*,char const*,int ,int *) ;
 int * svn_error_trace (int ) ;
 char* svn_path_url_add_component2 (char*,char const*,int ) ;
 char* svn_relpath_skip_ancestor (int ,int ) ;

__attribute__((used)) static svn_error_t *
checkout_dir(dir_context_t *dir,
             apr_pool_t *scratch_pool)
{
  dir_context_t *c_dir = dir;
  const char *checkout_url;
  const char **working;

  if (dir->working_url)
    {
      return SVN_NO_ERROR;
    }



  while (c_dir)
    {
      if (c_dir->added)
        {



          dir_context_t *c_dir_parent = c_dir->parent_dir;
          const char *relpath = svn_relpath_skip_ancestor(c_dir_parent->relpath,
                                                          dir->relpath);


          SVN_ERR_ASSERT(c_dir_parent->working_url);
          dir->working_url = svn_path_url_add_component2(
                                   c_dir_parent->working_url,
                                   relpath, dir->pool);
          return SVN_NO_ERROR;
        }
      c_dir = c_dir->parent_dir;
    }





  if (!dir->parent_dir && !dir->commit_ctx->baseline_url)
    {
      checkout_url = dir->commit_ctx->vcc_url;
      working = &dir->commit_ctx->baseline_url;
    }
  else
    {
      checkout_url = dir->url;
      working = &dir->working_url;
    }


  return svn_error_trace(retry_checkout_node(working, dir->commit_ctx,
                                             checkout_url,
                                             dir->pool, scratch_pool));
}
