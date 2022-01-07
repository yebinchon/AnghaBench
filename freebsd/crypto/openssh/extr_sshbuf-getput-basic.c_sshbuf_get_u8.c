
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;
typedef scalar_t__ u_char ;
struct sshbuf {int dummy; } ;


 int sshbuf_consume (struct sshbuf*,int) ;
 scalar_t__* sshbuf_ptr (struct sshbuf*) ;

int
sshbuf_get_u8(struct sshbuf *buf, u_char *valp)
{
 const u_char *p = sshbuf_ptr(buf);
 int r;

 if ((r = sshbuf_consume(buf, 1)) < 0)
  return r;
 if (valp != ((void*)0))
  *valp = (u_int8_t)*p;
 return 0;
}
