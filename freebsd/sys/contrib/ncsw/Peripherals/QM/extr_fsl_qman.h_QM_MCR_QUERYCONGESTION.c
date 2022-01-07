
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct __qm_mcr_querycongestion {int* __state; } ;


 int __CGR_SHIFT (int ) ;
 size_t __CGR_WORD (int ) ;

__attribute__((used)) static __inline__ int QM_MCR_QUERYCONGESTION(struct __qm_mcr_querycongestion *p,
                    uint8_t cgr)
{
    return (int)(p->__state[__CGR_WORD(cgr)] & (0x80000000 >> __CGR_SHIFT(cgr)));
}
