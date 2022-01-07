
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct pmap {int pm_mtx; } ;


 int PDEBUG (int,int ) ;
 int PMAP_LOCK_INIT (struct pmap*) ;
 int bcopy (int ,struct pmap*,int) ;
 int bzero (int *,int) ;
 int kernel_pmap ;
 int printf (char*,int) ;

void
pmap_pinit0(struct pmap *pmap)
{
 PDEBUG(1, printf("pmap_pinit0: pmap = %08x\n", (u_int32_t) pmap));

 bcopy(kernel_pmap, pmap, sizeof(*pmap));
 bzero(&pmap->pm_mtx, sizeof(pmap->pm_mtx));
 PMAP_LOCK_INIT(pmap);
}
