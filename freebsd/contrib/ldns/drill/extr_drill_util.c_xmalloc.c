
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 void* malloc (size_t) ;
 int printf (char*) ;

void *
xmalloc(size_t s)
{
 void *p;

 p = malloc(s);
 if (!p) {
  printf("Mem failure\n");
  exit(EXIT_FAILURE);
 }
 return p;
}
