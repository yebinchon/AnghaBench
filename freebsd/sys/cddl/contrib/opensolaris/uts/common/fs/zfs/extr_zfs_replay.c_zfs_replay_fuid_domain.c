
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int z_domain_cnt; int z_domain_table; } ;
typedef TYPE_1__ zfs_fuid_info_t ;
typedef int uint64_t ;


 int KM_SLEEP ;
 int kmem_zalloc (int,int ) ;
 TYPE_1__* zfs_fuid_info_alloc () ;
 int zfs_replay_domain_cnt (int ,int ) ;
 void* zfs_replay_fuid_domain_common (TYPE_1__*,void*,int) ;
 int zfs_replay_fuid_ugid (TYPE_1__*,int ,int ) ;

__attribute__((used)) static zfs_fuid_info_t *
zfs_replay_fuid_domain(void *buf, void **end, uint64_t uid, uint64_t gid)
{
 int domcnt;

 zfs_fuid_info_t *fuid_infop;

 fuid_infop = zfs_fuid_info_alloc();

 domcnt = zfs_replay_domain_cnt(uid, gid);

 if (domcnt == 0)
  return (fuid_infop);

 fuid_infop->z_domain_table =
     kmem_zalloc(domcnt * sizeof (char **), KM_SLEEP);

 zfs_replay_fuid_ugid(fuid_infop, uid, gid);

 fuid_infop->z_domain_cnt = domcnt;
 *end = zfs_replay_fuid_domain_common(fuid_infop, buf, domcnt);
 return (fuid_infop);
}
