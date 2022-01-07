
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_txdelta_stream_t ;
struct TYPE_8__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {int (* get_file_delta_stream ) (int **,TYPE_2__*,char const*,TYPE_2__*,char const*,int *) ;} ;


 int stub1 (int **,TYPE_2__*,char const*,TYPE_2__*,char const*,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_get_file_delta_stream(svn_txdelta_stream_t **stream_p,
                             svn_fs_root_t *source_root,
                             const char *source_path,
                             svn_fs_root_t *target_root,
                             const char *target_path, apr_pool_t *pool)
{
  return svn_error_trace(target_root->vtable->get_file_delta_stream(
                           stream_p,
                           source_root, source_path,
                           target_root, target_path, pool));
}
