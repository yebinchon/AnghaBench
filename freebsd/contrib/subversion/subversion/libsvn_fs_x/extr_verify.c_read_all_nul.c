
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_x__revision_file_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;


 scalar_t__ STREAM_THRESHOLD ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int expect_buffer_nul (int *,scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
read_all_nul(svn_fs_x__revision_file_t *file,
             apr_off_t size,
             apr_pool_t *scratch_pool)
{
  for (; size >= STREAM_THRESHOLD; size -= STREAM_THRESHOLD)
    SVN_ERR(expect_buffer_nul(file, STREAM_THRESHOLD, scratch_pool));

  if (size)
    SVN_ERR(expect_buffer_nul(file, size, scratch_pool));

  return SVN_NO_ERROR;
}
