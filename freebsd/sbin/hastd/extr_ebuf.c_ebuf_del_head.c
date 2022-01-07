
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebuf {scalar_t__ eb_magic; size_t eb_size; size_t eb_used; } ;


 scalar_t__ EBUF_MAGIC ;
 int PJDLOG_ASSERT (int) ;

void
ebuf_del_head(struct ebuf *eb, size_t size)
{

 PJDLOG_ASSERT(eb != ((void*)0) && eb->eb_magic == EBUF_MAGIC);
 PJDLOG_ASSERT(size <= eb->eb_size);

 eb->eb_used += size;
 eb->eb_size -= size;
}
