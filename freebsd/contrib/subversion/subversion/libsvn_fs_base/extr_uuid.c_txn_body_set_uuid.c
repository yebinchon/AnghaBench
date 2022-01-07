
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; int fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct set_uuid_args {int uuid; int idx; } ;


 int * svn_fs_bdb__set_uuid (int ,int ,int ,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_set_uuid(void *baton, trail_t *trail)
{
  struct set_uuid_args *args = baton;
  return svn_fs_bdb__set_uuid(trail->fs, args->idx, args->uuid,
                              trail, trail->pool);
}
