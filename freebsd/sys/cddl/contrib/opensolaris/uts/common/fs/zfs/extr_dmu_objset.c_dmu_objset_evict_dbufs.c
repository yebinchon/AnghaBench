
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int os_lock; int os_dnodes; } ;
typedef TYPE_1__ objset_t ;
typedef int dnode_t ;


 int * DMU_GROUPUSED_DNODE (TYPE_1__*) ;
 int * DMU_META_DNODE (TYPE_1__*) ;
 int * DMU_USERUSED_DNODE (TYPE_1__*) ;
 int FTAG ;
 scalar_t__ dnode_add_ref (int *,int ) ;
 int dnode_evict_dbufs (int *) ;
 int dnode_rele (int *,int ) ;
 int * list_head (int *) ;
 int list_insert_after (int *,int *,int *) ;
 int * list_next (int *,int *) ;
 int list_remove (int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
dmu_objset_evict_dbufs(objset_t *os)
{
 dnode_t dn_marker;
 dnode_t *dn;

 mutex_enter(&os->os_lock);
 dn = list_head(&os->os_dnodes);
 while (dn != ((void*)0)) {





  if (dnode_add_ref(dn, FTAG)) {
   list_insert_after(&os->os_dnodes, dn, &dn_marker);
   mutex_exit(&os->os_lock);

   dnode_evict_dbufs(dn);
   dnode_rele(dn, FTAG);

   mutex_enter(&os->os_lock);
   dn = list_next(&os->os_dnodes, &dn_marker);
   list_remove(&os->os_dnodes, &dn_marker);
  } else {
   dn = list_next(&os->os_dnodes, dn);
  }
 }
 mutex_exit(&os->os_lock);

 if (DMU_USERUSED_DNODE(os) != ((void*)0)) {
  dnode_evict_dbufs(DMU_GROUPUSED_DNODE(os));
  dnode_evict_dbufs(DMU_USERUSED_DNODE(os));
 }
 dnode_evict_dbufs(DMU_META_DNODE(os));
}
