
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qsort_block ;


 scalar_t__ GET_BLOCK_FUNCTION (int ) ;
 int qsort_r (void*,size_t,size_t,int ,int (*) (void*,void const*,void const*)) ;

void
qsort_b(void *base, size_t nel, size_t width, qsort_block compar)
{
 qsort_r(base, nel, width, compar,
  (int (*)(void *, const void *, const void *))
  GET_BLOCK_FUNCTION(compar));
}
