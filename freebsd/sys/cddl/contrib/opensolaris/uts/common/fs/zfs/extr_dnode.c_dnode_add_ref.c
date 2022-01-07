
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dn_mtx; int dn_holds; } ;
typedef TYPE_1__ dnode_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int VERIFY (int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfs_refcount_add (int *,void*) ;
 scalar_t__ zfs_refcount_is_zero (int *) ;

boolean_t
dnode_add_ref(dnode_t *dn, void *tag)
{
 mutex_enter(&dn->dn_mtx);
 if (zfs_refcount_is_zero(&dn->dn_holds)) {
  mutex_exit(&dn->dn_mtx);
  return (FALSE);
 }
 VERIFY(1 < zfs_refcount_add(&dn->dn_holds, tag));
 mutex_exit(&dn->dn_mtx);
 return (TRUE);
}
