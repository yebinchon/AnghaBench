
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;
typedef int EC_POINT ;
typedef int EC_GROUP ;


 int SSHBUF_ABORT () ;
 int SSHBUF_DBG (char*) ;
 int SSH_ERR_INTERNAL_ERROR ;
 int get_ec (int const*,size_t,int *,int const*) ;
 scalar_t__ sshbuf_get_string_direct (struct sshbuf*,int *,int *) ;
 int sshbuf_peek_string_direct (struct sshbuf*,int const**,size_t*) ;

int
sshbuf_get_ec(struct sshbuf *buf, EC_POINT *v, const EC_GROUP *g)
{
 const u_char *d;
 size_t len;
 int r;

 if ((r = sshbuf_peek_string_direct(buf, &d, &len)) < 0)
  return r;
 if ((r = get_ec(d, len, v, g)) != 0)
  return r;

 if (sshbuf_get_string_direct(buf, ((void*)0), ((void*)0)) != 0) {

  SSHBUF_DBG(("SSH_ERR_INTERNAL_ERROR"));
  SSHBUF_ABORT();
  return SSH_ERR_INTERNAL_ERROR;
 }
 return 0;
}
