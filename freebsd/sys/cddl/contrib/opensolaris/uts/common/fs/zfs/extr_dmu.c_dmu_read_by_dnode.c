
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int dnode_t ;


 int dmu_read_impl (int *,int ,int ,void*,int ) ;

int
dmu_read_by_dnode(dnode_t *dn, uint64_t offset, uint64_t size, void *buf,
    uint32_t flags)
{
 return (dmu_read_impl(dn, offset, size, buf, flags));
}
