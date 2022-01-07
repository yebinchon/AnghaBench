
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
typedef int apr_file_t ;


 int APR_SET ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_io_file_seek (int *,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
seek_file(void *baton, apr_off_t offset, apr_pool_t *scratch_pool)
{
  apr_file_t *file = baton;

  SVN_ERR(svn_io_file_seek(file, APR_SET, &offset, scratch_pool));
  return SVN_NO_ERROR;
}
