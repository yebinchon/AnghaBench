
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int errno ;
 int free (void*) ;
 int message_fatal (char*,int ) ;
 void* realloc (void*,size_t) ;
 int strerror (int const) ;

extern void *
xrealloc(void *ptr, size_t size)
{
 assert(size > 0);






 void *p = ptr;
 ptr = realloc(ptr, size);

 if (ptr == ((void*)0)) {
  const int saved_errno = errno;
  free(p);
  message_fatal("%s", strerror(saved_errno));
 }

 return ptr;
}
