
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;


 int sshbuf_free (struct sshbuf*) ;
 int sshbuf_froms (struct sshbuf*,struct sshbuf**) ;
 int sshkey_from_blob_internal (struct sshbuf*,struct sshkey**,int) ;

int
sshkey_froms(struct sshbuf *buf, struct sshkey **keyp)
{
 struct sshbuf *b;
 int r;

 if ((r = sshbuf_froms(buf, &b)) != 0)
  return r;
 r = sshkey_from_blob_internal(b, keyp, 1);
 sshbuf_free(b);
 return r;
}
