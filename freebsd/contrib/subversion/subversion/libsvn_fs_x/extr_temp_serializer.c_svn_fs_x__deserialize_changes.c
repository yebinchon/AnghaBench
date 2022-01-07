
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int * changes; } ;
typedef TYPE_1__ svn_fs_x__changes_list_t ;
typedef int svn_fs_x__change_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int deserialize_change (int *,int **) ;
 int svn_temp_deserializer__resolve (TYPE_1__*,void**) ;

svn_error_t *
svn_fs_x__deserialize_changes(void **out,
                              void *data,
                              apr_size_t data_len,
                              apr_pool_t *result_pool)
{
  int i;
  svn_fs_x__changes_list_t *changes = (svn_fs_x__changes_list_t *)data;


  svn_temp_deserializer__resolve(changes, (void**)&changes->changes);


  for (i = 0; i < changes->count; ++i)
    deserialize_change(changes->changes,
                       (svn_fs_x__change_t **)&changes->changes[i]);


  *out = changes;

  return SVN_NO_ERROR;
}
