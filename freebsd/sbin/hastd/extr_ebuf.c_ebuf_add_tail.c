
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebuf {scalar_t__ eb_magic; scalar_t__ eb_size; scalar_t__ eb_used; scalar_t__ eb_end; } ;


 scalar_t__ EBUF_MAGIC ;
 int PJDLOG_ASSERT (int) ;
 int bcopy (void const*,scalar_t__,size_t) ;
 int ebuf_tail_extend (struct ebuf*,size_t) ;

int
ebuf_add_tail(struct ebuf *eb, const void *data, size_t size)
{

 PJDLOG_ASSERT(eb != ((void*)0) && eb->eb_magic == EBUF_MAGIC);

 if (size > (size_t)(eb->eb_end - (eb->eb_used + eb->eb_size))) {




  if (ebuf_tail_extend(eb, size) == -1)
   return (-1);
 }
 PJDLOG_ASSERT(size <=
     (size_t)(eb->eb_end - (eb->eb_used + eb->eb_size)));




 if (data != ((void*)0))
  bcopy(data, eb->eb_used + eb->eb_size, size);
 eb->eb_size += size;

 return (0);
}
