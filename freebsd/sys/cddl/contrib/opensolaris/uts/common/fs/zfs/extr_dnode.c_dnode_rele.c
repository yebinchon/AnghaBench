
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dn_mtx; } ;
typedef TYPE_1__ dnode_t ;


 int B_FALSE ;
 int dnode_rele_and_unlock (TYPE_1__*,void*,int ) ;
 int mutex_enter (int *) ;

void
dnode_rele(dnode_t *dn, void *tag)
{
 mutex_enter(&dn->dn_mtx);
 dnode_rele_and_unlock(dn, tag, B_FALSE);
}
