
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qm_dqrr_entry {int dummy; } ;


 int QM_DQRR_SIZE ;

__attribute__((used)) static __inline__ uint8_t DQRR_PTR2IDX(struct qm_dqrr_entry *e)
{
    return (uint8_t)(((uintptr_t)e >> 6) & (QM_DQRR_SIZE - 1));
}
