
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_root_t ;
typedef int svn_fs_process_contents_func_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* try_process_file_contents ) (int *,TYPE_2__*,char const*,int ,void*,int *) ;} ;


 int FALSE ;
 int * SVN_NO_ERROR ;
 int stub1 (int *,TYPE_2__*,char const*,int ,void*,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_try_process_file_contents(svn_boolean_t *success,
                                 svn_fs_root_t *root,
                                 const char *path,
                                 svn_fs_process_contents_func_t processor,
                                 void* baton,
                                 apr_pool_t *pool)
{

  if (root->vtable->try_process_file_contents == ((void*)0))
    {
      *success = FALSE;
      return SVN_NO_ERROR;
    }

  return svn_error_trace(root->vtable->try_process_file_contents(
                         success,
                         root, path,
                         processor, baton, pool));
}
