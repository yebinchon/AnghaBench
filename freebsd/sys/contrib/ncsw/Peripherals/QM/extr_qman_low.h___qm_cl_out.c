
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qm_addr {int addr_ce; } ;


 int WRITE_UINT32 (int ,int ) ;
 int dcbf (int *) ;
 scalar_t__ ptr_ADD (int ,uintptr_t) ;

__attribute__((used)) static __inline__ void __qm_cl_out(struct qm_addr *qm, uintptr_t offset, uint32_t val)
{
    uint32_t *tmp = (uint32_t *)ptr_ADD(qm->addr_ce, offset);
    WRITE_UINT32(*tmp, val);
    dcbf(tmp);
}
