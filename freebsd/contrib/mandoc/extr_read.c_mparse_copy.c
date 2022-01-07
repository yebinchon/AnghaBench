
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mparse {struct buf* secondary; } ;
struct buf {int buf; struct buf* next; } ;


 int puts (int ) ;

void
mparse_copy(const struct mparse *p)
{
 struct buf *buf;

 for (buf = p->secondary; buf != ((void*)0); buf = buf->next)
  puts(buf->buf);
}
