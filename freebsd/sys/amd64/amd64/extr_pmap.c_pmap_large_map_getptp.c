
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vm_page_t ;


 int MA_OWNED ;
 int PMAP_LOCK (int ) ;
 int PMAP_LOCK_ASSERT (int ,int ) ;
 int PMAP_UNLOCK (int ) ;
 int kernel_pmap ;
 int * pmap_large_map_getptp_unlocked () ;
 int vm_wait (int *) ;

__attribute__((used)) static vm_page_t
pmap_large_map_getptp(void)
{
 vm_page_t m;

 PMAP_LOCK_ASSERT(kernel_pmap, MA_OWNED);
 m = pmap_large_map_getptp_unlocked();
 if (m == ((void*)0)) {
  PMAP_UNLOCK(kernel_pmap);
  vm_wait(((void*)0));
  PMAP_LOCK(kernel_pmap);

 }
 return (m);
}
