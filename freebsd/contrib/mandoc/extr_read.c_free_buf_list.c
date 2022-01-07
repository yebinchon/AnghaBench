
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {struct buf* buf; struct buf* next; } ;


 int free (struct buf*) ;

__attribute__((used)) static void
free_buf_list(struct buf *buf)
{
 struct buf *tmp;

 while (buf != ((void*)0)) {
  tmp = buf;
  buf = tmp->next;
  free(tmp->buf);
  free(tmp);
 }
}
