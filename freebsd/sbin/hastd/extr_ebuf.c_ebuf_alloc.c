
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebuf {int eb_magic; scalar_t__ eb_size; int * eb_start; int * eb_used; int * eb_end; } ;


 int EBUF_MAGIC ;
 size_t PAGE_SIZE ;
 int errno ;
 int free (struct ebuf*) ;
 void* malloc (size_t) ;

struct ebuf *
ebuf_alloc(size_t size)
{
 struct ebuf *eb;
 int rerrno;

 eb = malloc(sizeof(*eb));
 if (eb == ((void*)0))
  return (((void*)0));
 size += PAGE_SIZE;
 eb->eb_start = malloc(size);
 if (eb->eb_start == ((void*)0)) {
  rerrno = errno;
  free(eb);
  errno = rerrno;
  return (((void*)0));
 }
 eb->eb_end = eb->eb_start + size;




 eb->eb_used = eb->eb_start + PAGE_SIZE / 4;
 eb->eb_size = 0;
 eb->eb_magic = EBUF_MAGIC;

 return (eb);
}
