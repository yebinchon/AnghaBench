
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;


 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 int free (char*) ;
 char* sshbuf_dtob64 (struct sshbuf*) ;
 int sshbuf_free (struct sshbuf*) ;
 struct sshbuf* sshbuf_new () ;
 int sshkey_putb (struct sshkey const*,struct sshbuf*) ;

int
sshkey_to_base64(const struct sshkey *key, char **b64p)
{
 int r = SSH_ERR_INTERNAL_ERROR;
 struct sshbuf *b = ((void*)0);
 char *uu = ((void*)0);

 if (b64p != ((void*)0))
  *b64p = ((void*)0);
 if ((b = sshbuf_new()) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 if ((r = sshkey_putb(key, b)) != 0)
  goto out;
 if ((uu = sshbuf_dtob64(b)) == ((void*)0)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }

 if (b64p != ((void*)0)) {
  *b64p = uu;
  uu = ((void*)0);
 }
 r = 0;
 out:
 sshbuf_free(b);
 free(uu);
 return r;
}
