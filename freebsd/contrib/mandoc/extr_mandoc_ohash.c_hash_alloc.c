
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* mandoc_malloc (size_t) ;

__attribute__((used)) static void *
hash_alloc(size_t sz, void *arg)
{

 return mandoc_malloc(sz);
}
