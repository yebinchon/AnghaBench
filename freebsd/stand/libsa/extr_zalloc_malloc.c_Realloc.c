
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ga_Bytes; } ;
typedef TYPE_1__ Guard ;


 int DidAtExit ;
 int Free (void*,char const*,int) ;
 int MALLOCALIGN ;
 void* Malloc (size_t,char const*,int) ;
 scalar_t__ MallocCount ;
 scalar_t__ MallocMax ;
 int atexit (int ) ;
 int bcopy (void*,void*,size_t) ;
 int mallocstats ;

void *
Realloc(void *ptr, size_t size, const char *file, int line)
{
 void *res;
 size_t old;

 if ((res = Malloc(size, file, line)) != ((void*)0)) {
  if (ptr != ((void*)0)) {
   Guard *g = (Guard *)((char *)ptr - MALLOCALIGN);

   old = g->ga_Bytes - MALLOCALIGN;
   if (old < size)
    bcopy(ptr, res, old);
   else
    bcopy(ptr, res, size);
   Free(ptr, file, line);
  } else {
  }
 }
 return (res);
}
