
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmemopen_cookie {int len; int off; int buf; } ;


 int memcpy (char*,int,int) ;

__attribute__((used)) static int
fmemopen_read(void *cookie, char *buf, int nbytes)
{
 struct fmemopen_cookie *ck = cookie;

 if (nbytes > ck->len - ck->off)
  nbytes = ck->len - ck->off;

 if (nbytes == 0)
  return (0);

 memcpy(buf, ck->buf + ck->off, nbytes);

 ck->off += nbytes;

 return (nbytes);
}
