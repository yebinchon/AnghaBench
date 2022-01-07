
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {int dummy; } ;


 int sshbuf_put_string (struct sshbuf*,char const*,int ) ;
 int strlen (char const*) ;

int
sshbuf_put_cstring(struct sshbuf *buf, const char *v)
{
 return sshbuf_put_string(buf, v, v == ((void*)0) ? 0 : strlen(v));
}
