
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {size_t size; int * buf; } ;


 struct buf* calloc (int,int) ;
 int free (struct buf*) ;
 int * malloc (size_t) ;

struct buf *
buf_open(size_t len)
{
 struct buf *buf;

 if ((buf = calloc(1, sizeof(struct buf))) == ((void*)0))
  return (((void*)0));
 if ((buf->buf = malloc(len)) == ((void*)0)) {
  free(buf);
  return (((void*)0));
 }
 buf->size = len;

 return (buf);
}
