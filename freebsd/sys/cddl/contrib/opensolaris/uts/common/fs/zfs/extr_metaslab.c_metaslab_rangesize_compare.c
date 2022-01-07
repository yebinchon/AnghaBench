
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ rs_start; scalar_t__ rs_end; } ;
typedef TYPE_1__ range_seg_t ;


 int AVL_CMP (scalar_t__,scalar_t__) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int
metaslab_rangesize_compare(const void *x1, const void *x2)
{
 const range_seg_t *r1 = x1;
 const range_seg_t *r2 = x2;
 uint64_t rs_size1 = r1->rs_end - r1->rs_start;
 uint64_t rs_size2 = r2->rs_end - r2->rs_start;

 int cmp = AVL_CMP(rs_size1, rs_size2);
 if (likely(cmp))
  return (cmp);

 return (AVL_CMP(r1->rs_start, r2->rs_start));
}
