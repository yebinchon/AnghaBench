
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;


 int sshbuf_reserve (struct sshbuf*,int,int **) ;

int
sshbuf_put_u8(struct sshbuf *buf, u_char val)
{
 u_char *p;
 int r;

 if ((r = sshbuf_reserve(buf, 1, &p)) < 0)
  return r;
 p[0] = val;
 return 0;
}
