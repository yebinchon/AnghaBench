
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int svn_io_file_del_none ;
 int svn_io_file_del_on_close ;
 int * svn_wc_create_tmp_file2 (int **,int *,char const*,int ,int *) ;

svn_error_t *
svn_wc_create_tmp_file(apr_file_t **fp,
                       const char *path,
                       svn_boolean_t delete_on_close,
                       apr_pool_t *pool)
{
  return svn_wc_create_tmp_file2(fp, ((void*)0), path,
                                 delete_on_close
                                 ? svn_io_file_del_on_close
                                 : svn_io_file_del_none,
                                 pool);
}
