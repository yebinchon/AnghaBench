
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int svn_io_file_del_on_pool_cleanup ;
 int * svn_io_open_unique_file3 (int **,int *,int *,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
open_tmp_file(apr_file_t **fp, void *callback_baton, apr_pool_t *pool)
{
  return svn_io_open_unique_file3(fp, ((void*)0), ((void*)0),
                                  svn_io_file_del_on_pool_cleanup,
                                  pool, pool);
}
