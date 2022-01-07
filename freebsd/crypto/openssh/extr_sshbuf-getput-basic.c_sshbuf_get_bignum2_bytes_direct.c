
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;


 int SSHBUF_ABORT () ;
 int SSHBUF_DBG (char*) ;
 int SSHBUF_MAX_BIGNUM ;
 int SSH_ERR_BIGNUM_IS_NEGATIVE ;
 int SSH_ERR_BIGNUM_TOO_LARGE ;
 int SSH_ERR_INTERNAL_ERROR ;
 scalar_t__ sshbuf_consume (struct sshbuf*,size_t) ;
 int sshbuf_peek_string_direct (struct sshbuf*,int const**,size_t*) ;

int
sshbuf_get_bignum2_bytes_direct(struct sshbuf *buf,
    const u_char **valp, size_t *lenp)
{
 const u_char *d;
 size_t len, olen;
 int r;

 if ((r = sshbuf_peek_string_direct(buf, &d, &olen)) < 0)
  return r;
 len = olen;

 if ((len != 0 && (*d & 0x80) != 0))
  return SSH_ERR_BIGNUM_IS_NEGATIVE;

 if (len > SSHBUF_MAX_BIGNUM + 1 ||
     (len == SSHBUF_MAX_BIGNUM + 1 && *d != 0))
  return SSH_ERR_BIGNUM_TOO_LARGE;

 while (len > 0 && *d == 0x00) {
  d++;
  len--;
 }
 if (valp != ((void*)0))
  *valp = d;
 if (lenp != ((void*)0))
  *lenp = len;
 if (sshbuf_consume(buf, olen + 4) != 0) {

  SSHBUF_DBG(("SSH_ERR_INTERNAL_ERROR"));
  SSHBUF_ABORT();
  return SSH_ERR_INTERNAL_ERROR;
 }
 return 0;
}
