
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_addr {int addr_ce; } ;


 int dcbt_rw (int ) ;
 int ptr_ADD (int ,uintptr_t) ;

__attribute__((used)) static __inline__ void __qm_cl_touch_rw(struct qm_addr *qm, uintptr_t offset)
{
    dcbt_rw(ptr_ADD(qm->addr_ce, offset));
}
