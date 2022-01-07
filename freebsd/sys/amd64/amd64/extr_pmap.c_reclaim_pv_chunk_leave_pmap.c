
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * pmap_t ;


 int PMAP_UNLOCK (int *) ;
 int pmap_delayed_invl_finish () ;
 int pmap_invalidate_all (int *) ;

__attribute__((used)) static void
reclaim_pv_chunk_leave_pmap(pmap_t pmap, pmap_t locked_pmap, bool start_di)
{

 if (pmap == ((void*)0))
  return;
 pmap_invalidate_all(pmap);
 if (pmap != locked_pmap)
  PMAP_UNLOCK(pmap);
 if (start_di)
  pmap_delayed_invl_finish();
}
