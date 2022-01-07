
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_base__populate_uuid (int *,int *) ;

__attribute__((used)) static svn_error_t *
populate_opened_fs(svn_fs_t *fs, apr_pool_t *scratch_pool)
{
  SVN_ERR(svn_fs_base__populate_uuid(fs, scratch_pool));
  return SVN_NO_ERROR;
}
