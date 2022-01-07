
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;
struct sshbuf {int dummy; } ;


 int PEEK_U32 (int const*) ;
 int sshbuf_consume (struct sshbuf*,int) ;
 int * sshbuf_ptr (struct sshbuf*) ;

int
sshbuf_get_u32(struct sshbuf *buf, u_int32_t *valp)
{
 const u_char *p = sshbuf_ptr(buf);
 int r;

 if ((r = sshbuf_consume(buf, 4)) < 0)
  return r;
 if (valp != ((void*)0))
  *valp = PEEK_U32(p);
 return 0;
}
