
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pages_nohuge_impl (void*,size_t,int) ;

bool
pages_nohuge(void *addr, size_t size) {
 return pages_nohuge_impl(addr, size, 1);
}
