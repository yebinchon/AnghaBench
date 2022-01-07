
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_io_remove_file2 (char const*,int ,int *) ;
 int svn_io_set_file_read_write (char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
hotcopy_remove_file(const char *path,
                    apr_pool_t *scratch_pool)
{

  SVN_ERR(svn_io_set_file_read_write(path, TRUE, scratch_pool));
  SVN_ERR(svn_io_remove_file2(path, TRUE, scratch_pool));

  return SVN_NO_ERROR;
}
