
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qm_mr {int ci; } ;
struct qm_portal {struct qm_mr mr; } ;



__attribute__((used)) static __inline__ uint8_t qm_mr_get_ci(struct qm_portal *portal)
{
    register struct qm_mr *mr = &portal->mr;
    return mr->ci;
}
