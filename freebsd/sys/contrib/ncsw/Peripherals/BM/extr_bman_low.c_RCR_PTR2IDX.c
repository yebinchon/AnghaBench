
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bm_rcr_entry {int dummy; } ;


 int BM_RCR_SIZE ;

__attribute__((used)) static __inline__ uint8_t RCR_PTR2IDX(struct bm_rcr_entry *e)
{
    return (uint8_t)(((uintptr_t)e >> 6) & (BM_RCR_SIZE - 1));
}
