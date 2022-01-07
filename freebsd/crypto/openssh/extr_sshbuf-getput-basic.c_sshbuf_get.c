
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;


 int memcpy (void*,int const*,size_t) ;
 int sshbuf_consume (struct sshbuf*,size_t) ;
 int * sshbuf_ptr (struct sshbuf*) ;

int
sshbuf_get(struct sshbuf *buf, void *v, size_t len)
{
 const u_char *p = sshbuf_ptr(buf);
 int r;

 if ((r = sshbuf_consume(buf, len)) < 0)
  return r;
 if (v != ((void*)0) && len != 0)
  memcpy(v, p, len);
 return 0;
}
