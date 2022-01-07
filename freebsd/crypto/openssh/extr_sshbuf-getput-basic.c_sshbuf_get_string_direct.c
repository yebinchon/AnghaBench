
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;


 int SSHBUF_ABORT () ;
 int SSHBUF_DBG (char*) ;
 int SSH_ERR_INTERNAL_ERROR ;
 scalar_t__ sshbuf_consume (struct sshbuf*,size_t) ;
 int sshbuf_peek_string_direct (struct sshbuf*,int const**,size_t*) ;

int
sshbuf_get_string_direct(struct sshbuf *buf, const u_char **valp, size_t *lenp)
{
 size_t len;
 const u_char *p;
 int r;

 if (valp != ((void*)0))
  *valp = ((void*)0);
 if (lenp != ((void*)0))
  *lenp = 0;
 if ((r = sshbuf_peek_string_direct(buf, &p, &len)) < 0)
  return r;
 if (valp != ((void*)0))
  *valp = p;
 if (lenp != ((void*)0))
  *lenp = len;
 if (sshbuf_consume(buf, len + 4) != 0) {

  SSHBUF_DBG(("SSH_ERR_INTERNAL_ERROR"));
  SSHBUF_ABORT();
  return SSH_ERR_INTERNAL_ERROR;
 }
 return 0;
}
