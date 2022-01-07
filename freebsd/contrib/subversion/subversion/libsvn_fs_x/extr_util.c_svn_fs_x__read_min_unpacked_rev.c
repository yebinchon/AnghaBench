
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int buf ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int APR_BUFFERED ;
 int APR_OS_DEFAULT ;
 int APR_READ ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__path_min_unpacked_rev (int *,int *) ;
 int svn_io_file_close (int *,int *) ;
 int svn_io_file_open (int **,int ,int,int ,int *) ;
 int svn_io_read_length_line (int *,char*,int*,int *) ;
 int svn_revnum_parse (int *,char*,int *) ;

svn_error_t *
svn_fs_x__read_min_unpacked_rev(svn_revnum_t *min_unpacked_rev,
                                svn_fs_t *fs,
                                apr_pool_t *scratch_pool)
{
  char buf[80];
  apr_file_t *file;
  apr_size_t len;

  SVN_ERR(svn_io_file_open(&file,
                           svn_fs_x__path_min_unpacked_rev(fs, scratch_pool),
                           APR_READ | APR_BUFFERED,
                           APR_OS_DEFAULT,
                           scratch_pool));
  len = sizeof(buf);
  SVN_ERR(svn_io_read_length_line(file, buf, &len, scratch_pool));
  SVN_ERR(svn_io_file_close(file, scratch_pool));

  SVN_ERR(svn_revnum_parse(min_unpacked_rev, buf, ((void*)0)));
  return SVN_NO_ERROR;
}
