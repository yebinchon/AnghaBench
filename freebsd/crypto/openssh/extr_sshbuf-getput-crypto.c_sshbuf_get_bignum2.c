
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;
typedef int BIGNUM ;


 int * BN_bin2bn (int const*,size_t,int *) ;
 int SSH_ERR_ALLOC_FAIL ;
 int sshbuf_get_bignum2_bytes_direct (struct sshbuf*,int const**,size_t*) ;

int
sshbuf_get_bignum2(struct sshbuf *buf, BIGNUM *v)
{
 const u_char *d;
 size_t len;
 int r;

 if ((r = sshbuf_get_bignum2_bytes_direct(buf, &d, &len)) != 0)
  return r;
 if (v != ((void*)0) && BN_bin2bn(d, len, v) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 return 0;
}
