
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _panic (char*,unsigned long,unsigned long) ;
 int free (void*) ;
 void* malloc (int) ;
 void* realloc (void*,size_t) ;

__attribute__((used)) static void *
_xrealloc(void *p, size_t s)
{
 void *ptr;

 if(p == ((void*)0)) {
  if((ptr=malloc(s)) == ((void*)0) && (s!=0 || (ptr=malloc(1)) == ((void*)0)))
   _panic("out of memory: xrealloc(%lx, %lu)",
    (unsigned long)p, (unsigned long)s);
 } else if(s == 0) {
  free(p);
  if((ptr=malloc(s)) == ((void*)0) && (ptr=malloc(1)) == ((void*)0))
   _panic("out of memory: xrealloc(%lx, %lu)",
    (unsigned long)p, (unsigned long)s);
 } else {
  if((ptr = realloc(p, s)) == ((void*)0))
   _panic("out of memory: xrealloc(%lx, %lu)",
    (unsigned long)p, (unsigned long)s);
 }

 return ptr;
}
