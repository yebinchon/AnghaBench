
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*,long) ;
 void* malloc (size_t) ;

void *
ftp_malloc(size_t size)
{
 void *p;

 p = malloc(size);
 if (p == ((void*)0))
  err(1, "Unable to allocate %ld bytes of memory", (long)size);
 return (p);
}
