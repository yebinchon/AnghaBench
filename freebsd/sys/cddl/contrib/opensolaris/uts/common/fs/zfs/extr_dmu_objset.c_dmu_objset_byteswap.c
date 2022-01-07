
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zil_header_t ;
struct TYPE_2__ {int os_groupused_dnode; int os_userused_dnode; void* os_flags; void* os_type; int os_zil_header; int os_meta_dnode; } ;
typedef TYPE_1__ objset_phys_t ;


 int ASSERT (int) ;
 void* BSWAP_64 (void*) ;
 size_t OBJSET_OLD_PHYS_SIZE ;
 int byteswap_uint64_array (int *,int) ;
 int dnode_byteswap (int *) ;

void
dmu_objset_byteswap(void *buf, size_t size)
{
 objset_phys_t *osp = buf;

 ASSERT(size == OBJSET_OLD_PHYS_SIZE || size == sizeof (objset_phys_t));
 dnode_byteswap(&osp->os_meta_dnode);
 byteswap_uint64_array(&osp->os_zil_header, sizeof (zil_header_t));
 osp->os_type = BSWAP_64(osp->os_type);
 osp->os_flags = BSWAP_64(osp->os_flags);
 if (size == sizeof (objset_phys_t)) {
  dnode_byteswap(&osp->os_userused_dnode);
  dnode_byteswap(&osp->os_groupused_dnode);
 }
}
