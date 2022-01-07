
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNUSED (void*) ;
 int free (void*) ;

__attribute__((used)) static void
default_memfree(void *arg, void *ptr) {
 UNUSED(arg);
 free(ptr);
}
