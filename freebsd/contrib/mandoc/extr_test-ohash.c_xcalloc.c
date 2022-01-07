
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (size_t,size_t) ;

__attribute__((used)) static void *
xcalloc(size_t nmemb, size_t sz, void *arg)
{
 return calloc(nmemb,sz);
}
