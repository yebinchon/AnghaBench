
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {int dummy; } ;


 scalar_t__ sshbuf_check_sanity (struct sshbuf*) ;
 int sshbuf_free (struct sshbuf*) ;
 struct sshbuf* sshbuf_from (int ,int ) ;
 int sshbuf_len (struct sshbuf*) ;
 int sshbuf_ptr (struct sshbuf*) ;
 scalar_t__ sshbuf_set_parent (struct sshbuf*,struct sshbuf*) ;

struct sshbuf *
sshbuf_fromb(struct sshbuf *buf)
{
 struct sshbuf *ret;

 if (sshbuf_check_sanity(buf) != 0)
  return ((void*)0);
 if ((ret = sshbuf_from(sshbuf_ptr(buf), sshbuf_len(buf))) == ((void*)0))
  return ((void*)0);
 if (sshbuf_set_parent(ret, buf) != 0) {
  sshbuf_free(ret);
  return ((void*)0);
 }
 return ret;
}
