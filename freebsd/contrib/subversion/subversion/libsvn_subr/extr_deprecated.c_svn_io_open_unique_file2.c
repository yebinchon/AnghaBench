
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_io_file_del_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int * svn_error_trace (int ) ;
 int svn_io_open_uniquely_named (int **,char const**,char const*,char const*,char const*,int ,int *,int *) ;
 int svn_path_split (char const*,char const**,char const**,int *) ;

svn_error_t *
svn_io_open_unique_file2(apr_file_t **file,
                         const char **temp_path,
                         const char *path,
                         const char *suffix,
                         svn_io_file_del_t delete_when,
                         apr_pool_t *pool)
{
  const char *dirpath;
  const char *filename;

  svn_path_split(path, &dirpath, &filename, pool);
  return svn_error_trace(svn_io_open_uniquely_named(file, temp_path,
                                                    dirpath, filename, suffix,
                                                    delete_when,
                                                    pool, pool));
}
