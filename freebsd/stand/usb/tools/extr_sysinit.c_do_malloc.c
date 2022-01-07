
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_SOFTWARE ;
 int errx (int ,char*) ;
 void* malloc (int) ;

__attribute__((used)) static void *
do_malloc(int size)
{
 void *ptr;

 ptr = malloc(size);
 if (ptr == ((void*)0))
  errx(EX_SOFTWARE, "Could not allocate memory");
 return (ptr);
}
