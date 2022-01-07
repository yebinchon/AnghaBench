
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 int TRUE ;
 char* apr_pstrcat (int *,char*,int ,int ) ;
 int svn_fs__check_fs (int *,int ) ;
 int svn_uuid_generate (int *) ;

svn_error_t *
svn_fs_x__generate_lock_token(const char **token,
                              svn_fs_t *fs,
                              apr_pool_t *pool)
{
  SVN_ERR(svn_fs__check_fs(fs, TRUE));





  *token = apr_pstrcat(pool, "opaquelocktoken:",
                       svn_uuid_generate(pool), SVN_VA_NULL);
  return SVN_NO_ERROR;
}
