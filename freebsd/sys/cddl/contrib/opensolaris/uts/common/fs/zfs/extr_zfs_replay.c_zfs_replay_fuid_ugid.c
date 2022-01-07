
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* z_fuid_group; void* z_fuid_owner; } ;
typedef TYPE_1__ zfs_fuid_info_t ;
typedef void* uint64_t ;


 scalar_t__ IS_EPHEMERAL (void*) ;

__attribute__((used)) static void
zfs_replay_fuid_ugid(zfs_fuid_info_t *fuid_infop, uint64_t uid, uint64_t gid)
{




 if (IS_EPHEMERAL(uid))
  fuid_infop->z_fuid_owner = uid;

 if (IS_EPHEMERAL(gid))
  fuid_infop->z_fuid_group = gid;
}
