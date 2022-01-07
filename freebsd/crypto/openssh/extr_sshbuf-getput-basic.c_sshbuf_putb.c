
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {int dummy; } ;


 int sshbuf_len (struct sshbuf const*) ;
 int sshbuf_ptr (struct sshbuf const*) ;
 int sshbuf_put (struct sshbuf*,int ,int ) ;

int
sshbuf_putb(struct sshbuf *buf, const struct sshbuf *v)
{
 return sshbuf_put(buf, sshbuf_ptr(v), sshbuf_len(v));
}
