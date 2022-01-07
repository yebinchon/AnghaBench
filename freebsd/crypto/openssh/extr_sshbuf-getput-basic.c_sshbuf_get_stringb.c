
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;
struct sshbuf {int dummy; } ;


 int sshbuf_get (struct sshbuf*,int *,int ) ;
 int sshbuf_get_u32 (struct sshbuf*,int *) ;
 int sshbuf_peek_string_direct (struct sshbuf*,int *,int *) ;
 int sshbuf_reserve (struct sshbuf*,int ,int **) ;

int
sshbuf_get_stringb(struct sshbuf *buf, struct sshbuf *v)
{
 u_int32_t len;
 u_char *p;
 int r;






 if ((r = sshbuf_peek_string_direct(buf, ((void*)0), ((void*)0))) != 0 ||
     (r = sshbuf_get_u32(buf, &len)) != 0 ||
     (r = sshbuf_reserve(v, len, &p)) != 0 ||
     (r = sshbuf_get(buf, p, len)) != 0)
  return r;
 return 0;
}
