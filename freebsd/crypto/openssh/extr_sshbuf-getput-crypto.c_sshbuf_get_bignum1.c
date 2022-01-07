
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef int u_char ;
struct sshbuf {int dummy; } ;
typedef int BIGNUM ;


 int * BN_bin2bn (int const*,size_t,int *) ;
 int PEEK_U16 (int const*) ;
 int SSHBUF_ABORT () ;
 int SSHBUF_DBG (char*) ;
 size_t SSHBUF_MAX_BIGNUM ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_BIGNUM_TOO_LARGE ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_MESSAGE_INCOMPLETE ;
 scalar_t__ sshbuf_consume (struct sshbuf*,int) ;
 int sshbuf_len (struct sshbuf*) ;
 int * sshbuf_ptr (struct sshbuf*) ;

int
sshbuf_get_bignum1(struct sshbuf *buf, BIGNUM *v)
{
 const u_char *d = sshbuf_ptr(buf);
 u_int16_t len_bits;
 size_t len_bytes;


 if (sshbuf_len(buf) < 2)
  return SSH_ERR_MESSAGE_INCOMPLETE;
 len_bits = PEEK_U16(d);
 len_bytes = (len_bits + 7) >> 3;
 if (len_bytes > SSHBUF_MAX_BIGNUM)
  return SSH_ERR_BIGNUM_TOO_LARGE;
 if (sshbuf_len(buf) < 2 + len_bytes)
  return SSH_ERR_MESSAGE_INCOMPLETE;
 if (v != ((void*)0) && BN_bin2bn(d + 2, len_bytes, v) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 if (sshbuf_consume(buf, 2 + len_bytes) != 0) {
  SSHBUF_DBG(("SSH_ERR_INTERNAL_ERROR"));
  SSHBUF_ABORT();
  return SSH_ERR_INTERNAL_ERROR;
 }
 return 0;
}
