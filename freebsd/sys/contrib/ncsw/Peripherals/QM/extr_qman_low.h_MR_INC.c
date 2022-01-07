
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_mr_entry {int dummy; } ;


 struct qm_mr_entry* MR_CARRYCLEAR (struct qm_mr_entry*) ;

__attribute__((used)) static __inline__ struct qm_mr_entry *MR_INC(struct qm_mr_entry *e)
{
    return MR_CARRYCLEAR(e + 1);
}
