
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebuf {scalar_t__ eb_magic; unsigned char* eb_end; unsigned char* eb_start; unsigned char* eb_used; int eb_size; } ;


 scalar_t__ EBUF_MAGIC ;
 int PAGE_SIZE ;
 int PJDLOG_ASSERT (int) ;
 int bcopy (unsigned char*,unsigned char*,int ) ;
 unsigned char* malloc (size_t) ;

__attribute__((used)) static int
ebuf_head_extend(struct ebuf *eb, size_t size)
{
 unsigned char *newstart, *newused;
 size_t newsize;

 PJDLOG_ASSERT(eb != ((void*)0) && eb->eb_magic == EBUF_MAGIC);

 newsize = eb->eb_end - eb->eb_start + (PAGE_SIZE / 4) + size;

 newstart = malloc(newsize);
 if (newstart == ((void*)0))
  return (-1);
 newused =
     newstart + (PAGE_SIZE / 4) + size + (eb->eb_used - eb->eb_start);

 bcopy(eb->eb_used, newused, eb->eb_size);

 eb->eb_start = newstart;
 eb->eb_used = newused;
 eb->eb_end = newstart + newsize;

 return (0);
}
