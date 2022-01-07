
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebuf {scalar_t__ eb_magic; struct ebuf* eb_start; } ;


 scalar_t__ EBUF_MAGIC ;
 int PJDLOG_ASSERT (int) ;
 int free (struct ebuf*) ;

void
ebuf_free(struct ebuf *eb)
{

 PJDLOG_ASSERT(eb != ((void*)0) && eb->eb_magic == EBUF_MAGIC);

 eb->eb_magic = 0;

 free(eb->eb_start);
 free(eb);
}
