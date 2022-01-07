
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;
typedef int d ;
typedef int BIGNUM ;


 int BN_bn2bin (int const*,int *) ;
 int BN_num_bits (int const*) ;
 int POKE_U16 (int *,int) ;
 int SSHBUF_MAX_BIGNUM ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int explicit_bzero (int *,int) ;
 int memcpy (int *,int *,size_t) ;
 int sshbuf_reserve (struct sshbuf*,size_t,int **) ;

int
sshbuf_put_bignum1(struct sshbuf *buf, const BIGNUM *v)
{
 int r, len_bits = BN_num_bits(v);
 size_t len_bytes = (len_bits + 7) / 8;
 u_char d[SSHBUF_MAX_BIGNUM], *dp;

 if (len_bits < 0 || len_bytes > SSHBUF_MAX_BIGNUM)
  return SSH_ERR_INVALID_ARGUMENT;
 if (BN_bn2bin(v, d) != (int)len_bytes)
  return SSH_ERR_INTERNAL_ERROR;
 if ((r = sshbuf_reserve(buf, len_bytes + 2, &dp)) < 0) {
  explicit_bzero(d, sizeof(d));
  return r;
 }
 POKE_U16(dp, len_bits);
 if (len_bytes != 0)
  memcpy(dp + 2, d, len_bytes);
 explicit_bzero(d, sizeof(d));
 return 0;
}
