
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int spa_t ;
struct TYPE_6__ {int dn_datablkszsec; } ;
typedef TYPE_1__ dnode_phys_t ;


 int EIO ;
 scalar_t__ ZBT_MICRO ;
 scalar_t__ dnode_read (int const*,TYPE_1__ const*,int ,scalar_t__,size_t) ;
 int fzap_list (int const*,TYPE_1__ const*,int ) ;
 int mzap_list (TYPE_1__ const*,int ) ;
 scalar_t__ zap_scratch ;
 int zfs_printf ;

__attribute__((used)) static int
zap_list(const spa_t *spa, const dnode_phys_t *dnode)
{
 uint64_t zap_type;
 size_t size = dnode->dn_datablkszsec * 512;

 if (dnode_read(spa, dnode, 0, zap_scratch, size))
  return (EIO);

 zap_type = *(uint64_t *) zap_scratch;
 if (zap_type == ZBT_MICRO)
  return mzap_list(dnode, zfs_printf);
 else
  return fzap_list(spa, dnode, zfs_printf);
}
