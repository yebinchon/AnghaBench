
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNUSED (void*) ;
 void* malloc (size_t) ;

__attribute__((used)) static void *
default_memalloc(void *arg, size_t size) {
 UNUSED(arg);
 if (size == 0U)
  size = 1;
 return (malloc(size));
}
