
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int printf (char*) ;
 void* realloc (void*,size_t) ;

void *
xrealloc(void *p, size_t size)
{
 void *q;

 q = realloc(p, size);
 if (!q) {
  printf("Mem failure\n");
  exit(EXIT_FAILURE);
 }
 return q;
}
