
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;


 scalar_t__ NKPDPE (int) ;
 int NKPT ;
 int PDRSHIFT ;
 int howmany (int ,int) ;
 int nkpt ;

__attribute__((used)) static void
nkpt_init(vm_paddr_t addr)
{
 int pt_pages;




 pt_pages = howmany(addr, 1 << PDRSHIFT);
 pt_pages += NKPDPE(pt_pages);
 pt_pages += 32;

 nkpt = pt_pages;
}
