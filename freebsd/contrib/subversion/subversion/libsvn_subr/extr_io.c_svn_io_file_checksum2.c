
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_checksum_kind_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int APR_OS_DEFAULT ;
 int APR_READ ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_io_file_open (int **,char const*,int ,int ,int *) ;
 int svn_stream_contents_checksum (int **,int *,int ,int *,int *) ;
 int * svn_stream_from_aprfile2 (int *,int ,int *) ;

svn_error_t *
svn_io_file_checksum2(svn_checksum_t **checksum,
                      const char *file,
                      svn_checksum_kind_t kind,
                      apr_pool_t *pool)
{
  svn_stream_t *file_stream;
  apr_file_t* f;

  SVN_ERR(svn_io_file_open(&f, file, APR_READ, APR_OS_DEFAULT, pool));
  file_stream = svn_stream_from_aprfile2(f, FALSE, pool);
  SVN_ERR(svn_stream_contents_checksum(checksum, file_stream, kind,
                                       pool, pool));

  return SVN_NO_ERROR;
}
