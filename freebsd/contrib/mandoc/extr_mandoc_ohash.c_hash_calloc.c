
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* mandoc_calloc (size_t,size_t) ;

__attribute__((used)) static void *
hash_calloc(size_t n, size_t sz, void *arg)
{

 return mandoc_calloc(n, sz);
}
