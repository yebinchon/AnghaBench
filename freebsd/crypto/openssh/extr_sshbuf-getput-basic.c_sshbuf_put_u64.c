
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int u_char ;
struct sshbuf {int dummy; } ;


 int POKE_U64 (int *,int ) ;
 int sshbuf_reserve (struct sshbuf*,int,int **) ;

int
sshbuf_put_u64(struct sshbuf *buf, u_int64_t val)
{
 u_char *p;
 int r;

 if ((r = sshbuf_reserve(buf, 8, &p)) < 0)
  return r;
 POKE_U64(p, val);
 return 0;
}
