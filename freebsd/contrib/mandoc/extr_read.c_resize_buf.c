
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int sz; int buf; } ;


 int mandoc_realloc (int ,int) ;

__attribute__((used)) static void
resize_buf(struct buf *buf, size_t initial)
{

 buf->sz = buf->sz > initial/2 ? 2 * buf->sz : initial;
 buf->buf = mandoc_realloc(buf->buf, buf->sz);
}
