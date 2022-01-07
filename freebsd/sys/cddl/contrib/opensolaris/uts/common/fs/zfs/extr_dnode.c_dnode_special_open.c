
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
typedef int dnode_t ;
typedef int dnode_phys_t ;
struct TYPE_4__ {int dnh_zrlock; } ;
typedef TYPE_1__ dnode_handle_t ;


 int DNODE_VERIFY (int *) ;
 int * dnode_create (int *,int *,int *,int ,TYPE_1__*) ;
 int zrl_exit (int *) ;
 int zrl_init (int *) ;
 int zrl_tryenter (int *) ;

void
dnode_special_open(objset_t *os, dnode_phys_t *dnp, uint64_t object,
    dnode_handle_t *dnh)
{
 dnode_t *dn;

 zrl_init(&dnh->dnh_zrlock);
 zrl_tryenter(&dnh->dnh_zrlock);

 dn = dnode_create(os, dnp, ((void*)0), object, dnh);
 DNODE_VERIFY(dn);

 zrl_exit(&dnh->dnh_zrlock);
}
