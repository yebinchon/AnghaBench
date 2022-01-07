
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;
typedef int EC_POINT ;
typedef int EC_GROUP ;
typedef int BN_CTX ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 size_t EC_POINT_point2oct (int const*,int const*,int ,int *,size_t,int *) ;
 int POINT_CONVERSION_UNCOMPRESSED ;
 int SSHBUF_MAX_ECPOINT ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int explicit_bzero (int *,size_t) ;
 int sshbuf_put_string (struct sshbuf*,int *,size_t) ;

int
sshbuf_put_ec(struct sshbuf *buf, const EC_POINT *v, const EC_GROUP *g)
{
 u_char d[SSHBUF_MAX_ECPOINT];
 BN_CTX *bn_ctx;
 size_t len;
 int ret;

 if ((bn_ctx = BN_CTX_new()) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 if ((len = EC_POINT_point2oct(g, v, POINT_CONVERSION_UNCOMPRESSED,
     ((void*)0), 0, bn_ctx)) > SSHBUF_MAX_ECPOINT) {
  BN_CTX_free(bn_ctx);
  return SSH_ERR_INVALID_ARGUMENT;
 }
 if (EC_POINT_point2oct(g, v, POINT_CONVERSION_UNCOMPRESSED,
     d, len, bn_ctx) != len) {
  BN_CTX_free(bn_ctx);
  return SSH_ERR_INTERNAL_ERROR;
 }
 BN_CTX_free(bn_ctx);
 ret = sshbuf_put_string(buf, d, len);
 explicit_bzero(d, len);
 return ret;
}
