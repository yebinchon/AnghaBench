
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;


 int KEY_UNSPEC ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 int asprintf (char**,char*,char const*) ;
 int free (char*) ;
 int sshkey_free (struct sshkey*) ;
 struct sshkey* sshkey_new (int ) ;
 int sshkey_try_load_public (struct sshkey*,char*,int *) ;

int
sshkey_load_cert(const char *filename, struct sshkey **keyp)
{
 struct sshkey *pub = ((void*)0);
 char *file = ((void*)0);
 int r = SSH_ERR_INTERNAL_ERROR;

 if (keyp != ((void*)0))
  *keyp = ((void*)0);

 if (asprintf(&file, "%s-cert.pub", filename) == -1)
  return SSH_ERR_ALLOC_FAIL;

 if ((pub = sshkey_new(KEY_UNSPEC)) == ((void*)0)) {
  goto out;
 }
 if ((r = sshkey_try_load_public(pub, file, ((void*)0))) != 0)
  goto out;

 if (keyp != ((void*)0)) {
  *keyp = pub;
  pub = ((void*)0);
 }
 r = 0;
 out:
 free(file);
 sshkey_free(pub);
 return r;
}
