
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
 int SSH_ERR_KEY_CERT_MISMATCH ;
 int SSH_ERR_KEY_TYPE_UNKNOWN ;
 int sshkey_cert_copy (struct sshkey*,struct sshkey*) ;
 scalar_t__ sshkey_equal_public (struct sshkey*,struct sshkey*) ;
 int sshkey_free (struct sshkey*) ;
 int sshkey_load_cert (char const*,struct sshkey**) ;
 int sshkey_load_private_type (int,char const*,char const*,struct sshkey**,int *,int*) ;
 int sshkey_to_certified (struct sshkey*) ;

int
sshkey_load_private_cert(int type, const char *filename, const char *passphrase,
    struct sshkey **keyp, int *perm_ok)
{
 struct sshkey *key = ((void*)0), *cert = ((void*)0);
 int r;

 if (keyp != ((void*)0))
  *keyp = ((void*)0);

 switch (type) {





 case 131:
 case 128:
 case 129:
  break;
 default:
  return SSH_ERR_KEY_TYPE_UNKNOWN;
 }

 if ((r = sshkey_load_private_type(type, filename,
     passphrase, &key, ((void*)0), perm_ok)) != 0 ||
     (r = sshkey_load_cert(filename, &cert)) != 0)
  goto out;


 if (sshkey_equal_public(key, cert) == 0) {
  r = SSH_ERR_KEY_CERT_MISMATCH;
  goto out;
 }

 if ((r = sshkey_to_certified(key)) != 0 ||
     (r = sshkey_cert_copy(cert, key)) != 0)
  goto out;
 r = 0;
 if (keyp != ((void*)0)) {
  *keyp = key;
  key = ((void*)0);
 }
 out:
 sshkey_free(key);
 sshkey_free(cert);
 return r;
}
