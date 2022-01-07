
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmemopen_cookie {int size; int off; char* buf; int len; int bin; } ;


 int memcpy (char*,char const*,int) ;

__attribute__((used)) static int
fmemopen_write(void *cookie, const char *buf, int nbytes)
{
 struct fmemopen_cookie *ck = cookie;

 if (nbytes > ck->size - ck->off)
  nbytes = ck->size - ck->off;

 if (nbytes == 0)
  return (0);

 memcpy(ck->buf + ck->off, buf, nbytes);

 ck->off += nbytes;

 if (ck->off > ck->len)
  ck->len = ck->off;







 if (!ck->bin && ck->off < ck->size && ck->buf[ck->off - 1] != '\0')
  ck->buf[ck->off] = '\0';

 return (nbytes);
}
