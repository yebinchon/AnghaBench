
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int builder; } ;
typedef TYPE_1__ svn_fs_x__changes_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 TYPE_1__* changes_create_body (int ,int *) ;
 int svn_fs_x__string_table_builder_create (int *) ;

svn_fs_x__changes_t *
svn_fs_x__changes_create(apr_size_t initial_count,
                         apr_pool_t *result_pool)
{
  svn_fs_x__changes_t *changes = changes_create_body(initial_count,
                                                     result_pool);
  changes->builder = svn_fs_x__string_table_builder_create(result_pool);

  return changes;
}
