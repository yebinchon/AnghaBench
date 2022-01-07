
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; int fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;


 int * svn_fs_bdb__changes_delete (int ,char const*,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_cleanup_txn_changes(void *baton, trail_t *trail)
{
  const char *key = *(const char **)baton;

  return svn_fs_bdb__changes_delete(trail->fs, key, trail, trail->pool);
}
