
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebuf {scalar_t__ eb_magic; unsigned char* eb_end; unsigned char* eb_start; unsigned char* eb_used; } ;


 scalar_t__ EBUF_MAGIC ;
 int PAGE_SIZE ;
 int PJDLOG_ASSERT (int) ;
 unsigned char* realloc (unsigned char*,size_t) ;

__attribute__((used)) static int
ebuf_tail_extend(struct ebuf *eb, size_t size)
{
 unsigned char *newstart;
 size_t newsize;

 PJDLOG_ASSERT(eb != ((void*)0) && eb->eb_magic == EBUF_MAGIC);

 newsize = eb->eb_end - eb->eb_start + size + ((3 * PAGE_SIZE) / 4);

 newstart = realloc(eb->eb_start, newsize);
 if (newstart == ((void*)0))
  return (-1);

 eb->eb_used = newstart + (eb->eb_used - eb->eb_start);
 eb->eb_start = newstart;
 eb->eb_end = newstart + newsize;

 return (0);
}
