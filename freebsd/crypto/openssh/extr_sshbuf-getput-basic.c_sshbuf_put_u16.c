
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef int u_char ;
struct sshbuf {int dummy; } ;


 int POKE_U16 (int *,int ) ;
 int sshbuf_reserve (struct sshbuf*,int,int **) ;

int
sshbuf_put_u16(struct sshbuf *buf, u_int16_t val)
{
 u_char *p;
 int r;

 if ((r = sshbuf_reserve(buf, 2, &p)) < 0)
  return r;
 POKE_U16(p, val);
 return 0;
}
