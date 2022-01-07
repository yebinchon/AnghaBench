
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (size_t,size_t) ;

__attribute__((used)) static void *
mcalloc (void *md, size_t number, size_t size)
{
  return calloc (number, size);
}
