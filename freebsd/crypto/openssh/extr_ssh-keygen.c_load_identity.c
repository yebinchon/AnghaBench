
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;


 int RP_ALLOW_STDIN ;
 int SSH_ERR_KEY_WRONG_PASSPHRASE ;
 int explicit_bzero (char*,int ) ;
 int fatal (char*,char*,int ) ;
 int free (char*) ;
 scalar_t__ identity_passphrase ;
 char* read_passphrase (char*,int ) ;
 int ssh_err (int) ;
 int sshkey_load_private (char*,char*,struct sshkey**,int *) ;
 int strlen (char*) ;
 char* xstrdup (scalar_t__) ;

__attribute__((used)) static struct sshkey *
load_identity(char *filename)
{
 char *pass;
 struct sshkey *prv;
 int r;

 if ((r = sshkey_load_private(filename, "", &prv, ((void*)0))) == 0)
  return prv;
 if (r != SSH_ERR_KEY_WRONG_PASSPHRASE)
  fatal("Load key \"%s\": %s", filename, ssh_err(r));
 if (identity_passphrase)
  pass = xstrdup(identity_passphrase);
 else
  pass = read_passphrase("Enter passphrase: ", RP_ALLOW_STDIN);
 r = sshkey_load_private(filename, pass, &prv, ((void*)0));
 explicit_bzero(pass, strlen(pass));
 free(pass);
 if (r != 0)
  fatal("Load key \"%s\": %s", filename, ssh_err(r));
 return prv;
}
