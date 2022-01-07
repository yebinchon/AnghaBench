
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* username; } ;
typedef TYPE_1__ svn_fs_access_t ;
typedef int svn_error_t ;


 int * SVN_NO_ERROR ;

svn_error_t *
svn_fs_access_get_username(const char **username,
                           svn_fs_access_t *access_ctx)
{
  *username = access_ctx->username;

  return SVN_NO_ERROR;
}
