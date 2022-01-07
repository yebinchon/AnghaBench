
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ms_allocator; int ms_start; int ms_weight; scalar_t__ ms_primary; } ;
typedef TYPE_1__ metaslab_t ;


 int AVL_CMP (int ,int ) ;
 int IMPLY (int,int) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int
metaslab_compare(const void *x1, const void *x2)
{
 const metaslab_t *m1 = (const metaslab_t *)x1;
 const metaslab_t *m2 = (const metaslab_t *)x2;

 int sort1 = 0;
 int sort2 = 0;
 if (m1->ms_allocator != -1 && m1->ms_primary)
  sort1 = 1;
 else if (m1->ms_allocator != -1 && !m1->ms_primary)
  sort1 = 2;
 if (m2->ms_allocator != -1 && m2->ms_primary)
  sort2 = 1;
 else if (m2->ms_allocator != -1 && !m2->ms_primary)
  sort2 = 2;
 if (sort1 < sort2)
  return (-1);
 if (sort1 > sort2)
  return (1);

 int cmp = AVL_CMP(m2->ms_weight, m1->ms_weight);
 if (likely(cmp))
  return (cmp);

 IMPLY(AVL_CMP(m1->ms_start, m2->ms_start) == 0, m1 == m2);

 return (AVL_CMP(m1->ms_start, m2->ms_start));
}
