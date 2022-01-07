
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;


 int SSH_ERR_ALLOC_FAIL ;
 int sshbuf_free (struct sshbuf*) ;
 struct sshbuf* sshbuf_from (int const*,size_t) ;
 int sshkey_from_blob_internal (struct sshbuf*,struct sshkey**,int) ;

int
sshkey_from_blob(const u_char *blob, size_t blen, struct sshkey **keyp)
{
 struct sshbuf *b;
 int r;

 if ((b = sshbuf_from(blob, blen)) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 r = sshkey_from_blob_internal(b, keyp, 1);
 sshbuf_free(b);
 return r;
}
