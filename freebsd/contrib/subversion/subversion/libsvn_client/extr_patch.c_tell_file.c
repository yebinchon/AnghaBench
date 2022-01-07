
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
typedef int apr_file_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_io_file_get_offset (int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
tell_file(void *baton, apr_off_t *offset, apr_pool_t *scratch_pool)
{
  apr_file_t *file = baton;

  SVN_ERR(svn_io_file_get_offset(offset, file, scratch_pool));
  return SVN_NO_ERROR;
}
