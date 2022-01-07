
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;


 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int sshbuf_consume (struct sshbuf*,size_t) ;
 int sshbuf_free (struct sshbuf*) ;
 struct sshbuf* sshbuf_from (int const*,size_t) ;
 int sshbuf_peek_string_direct (struct sshbuf*,int const**,size_t*) ;
 int sshbuf_set_parent (struct sshbuf*,struct sshbuf*) ;

int
sshbuf_froms(struct sshbuf *buf, struct sshbuf **bufp)
{
 const u_char *p;
 size_t len;
 struct sshbuf *ret;
 int r;

 if (buf == ((void*)0) || bufp == ((void*)0))
  return SSH_ERR_INVALID_ARGUMENT;
 *bufp = ((void*)0);
 if ((r = sshbuf_peek_string_direct(buf, &p, &len)) != 0)
  return r;
 if ((ret = sshbuf_from(p, len)) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 if ((r = sshbuf_consume(buf, len + 4)) != 0 ||
     (r = sshbuf_set_parent(ret, buf)) != 0) {
  sshbuf_free(ret);
  return r;
 }
 *bufp = ret;
 return 0;
}
