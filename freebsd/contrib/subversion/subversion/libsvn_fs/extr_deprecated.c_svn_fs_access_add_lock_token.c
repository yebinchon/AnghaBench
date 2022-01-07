
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_access_t ;
typedef int svn_error_t ;


 int * svn_fs_access_add_lock_token2 (int *,char const*,char const*) ;

svn_error_t *
svn_fs_access_add_lock_token(svn_fs_access_t *access_ctx,
                             const char *token)
{
  return svn_fs_access_add_lock_token2(access_ctx, (const char *) 1, token);
}
