
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ibuf {scalar_t__ wpos; scalar_t__ max; scalar_t__ size; int * buf; } ;


 int ERANGE ;
 int errno ;
 int * realloc (int *,scalar_t__) ;

int
ibuf_realloc(struct ibuf *buf, size_t len)
{
 u_char *b;


 if (buf->wpos + len > buf->max) {
  errno = ERANGE;
  return (-1);
 }

 b = realloc(buf->buf, buf->wpos + len);
 if (b == ((void*)0))
  return (-1);
 buf->buf = b;
 buf->size = buf->wpos + len;

 return (0);
}
