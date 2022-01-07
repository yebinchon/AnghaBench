
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebuf {scalar_t__ eb_magic; size_t eb_size; } ;


 scalar_t__ EBUF_MAGIC ;
 int PJDLOG_ASSERT (int) ;

size_t
ebuf_size(struct ebuf *eb)
{

 PJDLOG_ASSERT(eb != ((void*)0) && eb->eb_magic == EBUF_MAGIC);

 return (eb->eb_size);
}
