
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int u_int ;
typedef int pmap_t ;


 int ENOMEM ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int pmap_pkru_assign (int ,int ,int ,int ,int) ;
 int pmap_pkru_check_uargs (int ,int ,int ,int ,int) ;
 int pmap_pkru_update_range (int ,int ,int ,int ) ;
 int round_page (int ) ;
 int trunc_page (int ) ;
 int vm_wait (int *) ;

int
pmap_pkru_set(pmap_t pmap, vm_offset_t sva, vm_offset_t eva, u_int keyidx,
    int flags)
{
 int error;

 sva = trunc_page(sva);
 eva = round_page(eva);
 error = pmap_pkru_check_uargs(pmap, sva, eva, keyidx, flags);
 if (error != 0)
  return (error);
 for (;;) {
  PMAP_LOCK(pmap);
  error = pmap_pkru_assign(pmap, sva, eva, keyidx, flags);
  if (error == 0)
   pmap_pkru_update_range(pmap, sva, eva, keyidx);
  PMAP_UNLOCK(pmap);
  if (error != ENOMEM)
   break;
  vm_wait(((void*)0));
 }
 return (error);
}
