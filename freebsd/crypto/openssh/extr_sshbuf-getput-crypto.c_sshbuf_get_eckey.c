
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;
typedef int EC_POINT ;
typedef int EC_KEY ;


 int EC_KEY_get0_group (int *) ;
 int EC_KEY_set_public_key (int *,int *) ;
 int EC_POINT_free (int *) ;
 int * EC_POINT_new (int ) ;
 int SSHBUF_ABORT () ;
 int SSHBUF_DBG (char*) ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 int get_ec (int const*,size_t,int *,int ) ;
 scalar_t__ sshbuf_get_string_direct (struct sshbuf*,int *,int *) ;
 int sshbuf_peek_string_direct (struct sshbuf*,int const**,size_t*) ;

int
sshbuf_get_eckey(struct sshbuf *buf, EC_KEY *v)
{
 EC_POINT *pt = EC_POINT_new(EC_KEY_get0_group(v));
 int r;
 const u_char *d;
 size_t len;

 if (pt == ((void*)0)) {
  SSHBUF_DBG(("SSH_ERR_ALLOC_FAIL"));
  return SSH_ERR_ALLOC_FAIL;
 }
 if ((r = sshbuf_peek_string_direct(buf, &d, &len)) < 0) {
  EC_POINT_free(pt);
  return r;
 }
 if ((r = get_ec(d, len, pt, EC_KEY_get0_group(v))) != 0) {
  EC_POINT_free(pt);
  return r;
 }
 if (EC_KEY_set_public_key(v, pt) != 1) {
  EC_POINT_free(pt);
  return SSH_ERR_ALLOC_FAIL;
 }
 EC_POINT_free(pt);

 if (sshbuf_get_string_direct(buf, ((void*)0), ((void*)0)) != 0) {

  SSHBUF_DBG(("SSH_ERR_INTERNAL_ERROR"));
  SSHBUF_ABORT();
  return SSH_ERR_INTERNAL_ERROR;
 }
 return 0;
}
