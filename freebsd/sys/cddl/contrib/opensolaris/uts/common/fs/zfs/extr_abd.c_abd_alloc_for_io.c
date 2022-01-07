
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;
typedef int abd_t ;


 int * abd_alloc_linear (size_t,int ) ;

abd_t *
abd_alloc_for_io(size_t size, boolean_t is_metadata)
{
 return (abd_alloc_linear(size, is_metadata));
}
