
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_dqrr_entry {int dummy; } ;


 struct qm_dqrr_entry* DQRR_CARRYCLEAR (struct qm_dqrr_entry*) ;

__attribute__((used)) static __inline__ struct qm_dqrr_entry *DQRR_INC(struct qm_dqrr_entry *e)
{
    return DQRR_CARRYCLEAR(e + 1);
}
