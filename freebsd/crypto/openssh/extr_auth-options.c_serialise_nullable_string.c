
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {int dummy; } ;


 int sshbuf_put_cstring (struct sshbuf*,char const*) ;
 int sshbuf_put_u8 (struct sshbuf*,int ) ;

__attribute__((used)) static int
serialise_nullable_string(struct sshbuf *m, const char *s)
{
 int r;

 if ((r = sshbuf_put_u8(m, s == ((void*)0))) != 0 ||
     (r = sshbuf_put_cstring(m, s)) != 0)
  return r;
 return 0;
}
