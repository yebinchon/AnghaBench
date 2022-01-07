
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibuf {scalar_t__ off; scalar_t__ buf; scalar_t__ buflen; } ;


 size_t MIN (size_t,scalar_t__) ;
 int memcpy (char*,scalar_t__,size_t) ;

__attribute__((used)) static int
readfn(void *vp, char *buf, int len)
{
 struct ibuf *ib = vp;
 size_t todo = MIN((size_t)len, ib->buflen - ib->off);

 memcpy(buf, ib->buf + ib->off, todo);
 ib->off += todo;
 return todo;
}
