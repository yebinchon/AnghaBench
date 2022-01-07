
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pmap_t ;
struct TYPE_3__ {int pm_cookie; } ;


 int ASID_FIRST_AVAILABLE ;
 int COOKIE_FROM (int,scalar_t__) ;
 scalar_t__ COOKIE_TO_EPOCH (int ) ;
 int KASSERT (int,char*) ;
 scalar_t__ asid_epoch ;
 int asid_next ;
 int asid_set ;
 int asid_set_mutex ;
 int asid_set_size ;
 int bit_ffc_at (int ,int,int,int*) ;
 int bit_set (int ,int) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int pmap_reset_asid_set () ;

__attribute__((used)) static void
pmap_alloc_asid(pmap_t pmap)
{
 int new_asid;

 mtx_lock_spin(&asid_set_mutex);







 if (COOKIE_TO_EPOCH(pmap->pm_cookie) == asid_epoch)
  goto out;

 bit_ffc_at(asid_set, asid_next, asid_set_size, &new_asid);
 if (new_asid == -1) {
  bit_ffc_at(asid_set, ASID_FIRST_AVAILABLE, asid_next,
      &new_asid);
  if (new_asid == -1) {
   pmap_reset_asid_set();
   bit_ffc_at(asid_set, ASID_FIRST_AVAILABLE,
       asid_set_size, &new_asid);
   KASSERT(new_asid != -1, ("ASID allocation failure"));
  }
 }
 bit_set(asid_set, new_asid);
 asid_next = new_asid + 1;
 pmap->pm_cookie = COOKIE_FROM(new_asid, asid_epoch);
out:
 mtx_unlock_spin(&asid_set_mutex);
}
