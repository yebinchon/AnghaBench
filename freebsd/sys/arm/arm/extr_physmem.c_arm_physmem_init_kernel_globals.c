
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXFLAG_NOALLOC ;
 int EXFLAG_NODUMP ;
 int Maxmem ;
 int PHYS_AVAIL_ENTRIES ;
 int atop (int ) ;
 int * dump_avail ;
 int panic (char*) ;
 int * phys_avail ;
 int physmem ;
 int realmem ;
 size_t regions_to_avail (int *,int ,int ,int *,int *) ;

void
arm_physmem_init_kernel_globals(void)
{
 size_t nextidx;

 regions_to_avail(dump_avail, EXFLAG_NODUMP, PHYS_AVAIL_ENTRIES, ((void*)0),
     ((void*)0));
 nextidx = regions_to_avail(phys_avail, EXFLAG_NOALLOC,
     PHYS_AVAIL_ENTRIES, &physmem, &realmem);
 if (nextidx == 0)
  panic("No memory entries in phys_avail");
 Maxmem = atop(phys_avail[nextidx - 1]);
}
