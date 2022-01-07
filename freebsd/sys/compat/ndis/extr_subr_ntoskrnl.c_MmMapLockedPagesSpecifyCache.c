
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int mdl ;


 void* MmMapLockedPages (int *,int ) ;

__attribute__((used)) static void *
MmMapLockedPagesSpecifyCache(mdl *buf, uint8_t accessmode, uint32_t cachetype,
 void *vaddr, uint32_t bugcheck, uint32_t prio)
{
 return (MmMapLockedPages(buf, accessmode));
}
