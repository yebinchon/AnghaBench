
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
typedef int apr_file_t ;


 int APR_SET ;
 int SVN_ERR (int ) ;
 int svn_io_file_del_on_pool_cleanup ;
 int * svn_io_file_seek (int *,int ,int *,int *) ;
 int svn_io_file_write_full (int *,int ,int ,int *,int *) ;
 int svn_io_open_unique_file3 (int **,int *,int *,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
create_temp_file(apr_file_t **f, const svn_string_t *value, apr_pool_t *pool)
{
  apr_off_t offset = 0;

  SVN_ERR(svn_io_open_unique_file3(f, ((void*)0), ((void*)0),
                                   svn_io_file_del_on_pool_cleanup,
                                   pool, pool));
  SVN_ERR(svn_io_file_write_full(*f, value->data, value->len, ((void*)0), pool));
  return svn_io_file_seek(*f, APR_SET, &offset, pool);
}
