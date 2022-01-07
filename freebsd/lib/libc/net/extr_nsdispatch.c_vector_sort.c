
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vector_comparison ;


 int qsort (void*,unsigned int,size_t,int ) ;

__attribute__((used)) static void
vector_sort(void *vec, unsigned int count, size_t esize,
    vector_comparison comparison)
{
 qsort(vec, count, esize, comparison);
}
