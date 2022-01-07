
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebuf {scalar_t__ eb_magic; size_t eb_size; void* eb_used; } ;


 scalar_t__ EBUF_MAGIC ;
 int PJDLOG_ASSERT (int) ;

void *
ebuf_data(struct ebuf *eb, size_t *sizep)
{

 PJDLOG_ASSERT(eb != ((void*)0) && eb->eb_magic == EBUF_MAGIC);

 if (sizep != ((void*)0))
  *sizep = eb->eb_size;
 return (eb->eb_size > 0 ? eb->eb_used : ((void*)0));
}
