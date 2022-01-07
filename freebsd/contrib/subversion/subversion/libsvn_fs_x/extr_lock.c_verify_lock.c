
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int path; int token; int owner; } ;
typedef TYPE_2__ svn_lock_t ;
struct TYPE_8__ {TYPE_1__* access_ctx; } ;
typedef TYPE_3__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int lock_tokens; int username; } ;


 int SVN_ERR_FS_BAD_LOCK_TOKEN ;
 int SVN_ERR_FS_LOCK_OWNER_MISMATCH ;
 int SVN_ERR_FS_NO_USER ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ strcmp (int ,int ) ;
 int * svn_error_createf (int ,int *,int ,int ,...) ;
 int * svn_hash_gets (int ,int ) ;

__attribute__((used)) static svn_error_t *
verify_lock(svn_fs_t *fs,
            svn_lock_t *lock)
{
  if ((! fs->access_ctx) || (! fs->access_ctx->username))
    return svn_error_createf
      (SVN_ERR_FS_NO_USER, ((void*)0),
       _("Cannot verify lock on path '%s'; no username available"),
       lock->path);

  else if (strcmp(fs->access_ctx->username, lock->owner) != 0)
    return svn_error_createf
      (SVN_ERR_FS_LOCK_OWNER_MISMATCH, ((void*)0),
       _("User '%s' does not own lock on path '%s' (currently locked by '%s')"),
       fs->access_ctx->username, lock->path, lock->owner);

  else if (svn_hash_gets(fs->access_ctx->lock_tokens, lock->token) == ((void*)0))
    return svn_error_createf
      (SVN_ERR_FS_BAD_LOCK_TOKEN, ((void*)0),
       _("Cannot verify lock on path '%s'; no matching lock-token available"),
       lock->path);

  return SVN_NO_ERROR;
}
