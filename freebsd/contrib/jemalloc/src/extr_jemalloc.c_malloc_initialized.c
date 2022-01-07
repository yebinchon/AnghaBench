
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc_init_initialized ;
 scalar_t__ malloc_init_state ;

bool
malloc_initialized(void) {
 return (malloc_init_state == malloc_init_initialized);
}
