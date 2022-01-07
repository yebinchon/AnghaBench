
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock_tokens; } ;
typedef TYPE_1__ svn_fs_access_t ;
typedef int svn_error_t ;


 int * SVN_NO_ERROR ;
 int svn_hash_sets (int ,char const*,char const*) ;

svn_error_t *
svn_fs_access_add_lock_token2(svn_fs_access_t *access_ctx,
                              const char *path,
                              const char *token)
{
  svn_hash_sets(access_ctx->lock_tokens, token, path);
  return SVN_NO_ERROR;
}
