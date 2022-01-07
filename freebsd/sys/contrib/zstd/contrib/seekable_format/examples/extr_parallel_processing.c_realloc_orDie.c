
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int perror (char*) ;
 void* realloc (void*,size_t) ;

__attribute__((used)) static void* realloc_orDie(void* ptr, size_t size)
{
    ptr = realloc(ptr, size);
    if (ptr) return ptr;

    perror("realloc");
    exit(1);
}
