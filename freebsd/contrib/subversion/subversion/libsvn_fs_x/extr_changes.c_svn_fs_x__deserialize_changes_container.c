
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int offsets; int changes; int paths; } ;
typedef TYPE_1__ svn_fs_x__changes_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int svn_fs_x__deserialize_apr_array (TYPE_1__*,int *,int *) ;
 int svn_fs_x__deserialize_string_table (TYPE_1__*,int *) ;

svn_error_t *
svn_fs_x__deserialize_changes_container(void **out,
                                         void *data,
                                         apr_size_t data_len,
                                         apr_pool_t *result_pool)
{
  svn_fs_x__changes_t *changes = (svn_fs_x__changes_t *)data;


  svn_fs_x__deserialize_string_table(changes, &changes->paths);
  svn_fs_x__deserialize_apr_array(changes, &changes->changes, result_pool);
  svn_fs_x__deserialize_apr_array(changes, &changes->offsets, result_pool);


  *out = changes;

  return SVN_NO_ERROR;
}
