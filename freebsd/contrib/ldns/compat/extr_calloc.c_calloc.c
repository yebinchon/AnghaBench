
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bzero (void*,size_t) ;
 void* malloc (size_t) ;

void *
calloc(size_t num, size_t size)
{
 void *new = malloc(num * size);
 if (!new) {
  return ((void*)0);
 }
 bzero(new, num * size);
 return new;
}
