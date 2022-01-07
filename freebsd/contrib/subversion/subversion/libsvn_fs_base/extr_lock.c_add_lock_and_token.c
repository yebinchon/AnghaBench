
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pool; int fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_lock_t ;
typedef int svn_error_t ;


 int SVN_ERR (int ) ;
 int svn_fs_bdb__lock_add (int ,char const*,int *,TYPE_1__*,int ) ;
 int * svn_fs_bdb__lock_token_add (int ,char const*,char const*,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
add_lock_and_token(svn_lock_t *lock,
                   const char *lock_token,
                   const char *path,
                   trail_t *trail)
{
  SVN_ERR(svn_fs_bdb__lock_add(trail->fs, lock_token, lock,
                               trail, trail->pool));
  return svn_fs_bdb__lock_token_add(trail->fs, path, lock_token,
                                    trail, trail->pool);
}
