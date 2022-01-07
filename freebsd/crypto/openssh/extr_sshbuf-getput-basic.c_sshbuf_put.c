
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;


 int memcpy (int *,void const*,size_t) ;
 int sshbuf_reserve (struct sshbuf*,size_t,int **) ;

int
sshbuf_put(struct sshbuf *buf, const void *v, size_t len)
{
 u_char *p;
 int r;

 if ((r = sshbuf_reserve(buf, len, &p)) < 0)
  return r;
 if (len != 0)
  memcpy(p, v, len);
 return 0;
}
