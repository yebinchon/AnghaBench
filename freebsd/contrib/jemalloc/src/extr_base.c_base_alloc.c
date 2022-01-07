
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int base_t ;


 void* base_alloc_impl (int *,int *,size_t,size_t,int *) ;

void *
base_alloc(tsdn_t *tsdn, base_t *base, size_t size, size_t alignment) {
 return base_alloc_impl(tsdn, base, size, alignment, ((void*)0));
}
