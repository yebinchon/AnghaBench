
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (int,int) ;
 int recallocarray (void*,int,int,int) ;

int
main(void)
{
 void *p;

 if ((p = calloc(2, 2)) == ((void*)0))
  return 1;
 return !recallocarray(p, 2, 3, 2);
}
