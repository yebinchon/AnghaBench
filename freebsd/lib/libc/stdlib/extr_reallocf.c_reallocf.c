
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 void* realloc (void*,size_t) ;

void *
reallocf(void *ptr, size_t size)
{
 void *nptr;

 nptr = realloc(ptr, size);







 if (!nptr && ptr && size != 0)
  free(ptr);
 return (nptr);
}
