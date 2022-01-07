
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_root_t ;
typedef int svn_filesize_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* file_length ) (int *,TYPE_2__*,char const*,int *) ;} ;


 int stub1 (int *,TYPE_2__*,char const*,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_file_length(svn_filesize_t *length_p, svn_fs_root_t *root,
                   const char *path, apr_pool_t *pool)
{
  return svn_error_trace(root->vtable->file_length(length_p, root, path,
                                                   pool));
}
