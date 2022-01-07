
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * lock_tokens; } ;
typedef TYPE_1__ svn_fs_access_t ;
typedef int apr_hash_t ;



apr_hash_t *
svn_fs__access_get_lock_tokens(svn_fs_access_t *access_ctx)
{
  return access_ctx->lock_tokens;
}
