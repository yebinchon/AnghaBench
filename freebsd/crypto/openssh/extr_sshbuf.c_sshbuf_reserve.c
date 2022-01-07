
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int size; int * d; } ;


 int SSHBUF_DBG (char*) ;
 int sshbuf_allocate (struct sshbuf*,size_t) ;

int
sshbuf_reserve(struct sshbuf *buf, size_t len, u_char **dpp)
{
 u_char *dp;
 int r;

 if (dpp != ((void*)0))
  *dpp = ((void*)0);

 SSHBUF_DBG(("reserve buf = %p len = %zu", buf, len));
 if ((r = sshbuf_allocate(buf, len)) != 0)
  return r;

 dp = buf->d + buf->size;
 buf->size += len;
 if (dpp != ((void*)0))
  *dpp = dp;
 return 0;
}
