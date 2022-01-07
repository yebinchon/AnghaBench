
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct sshkey {int dummy; } ;


 int debug (char*,char const*,int ) ;
 int errno ;
 int fatal (char*,char const*,...) ;
 int fingerprint_one_key (struct sshkey*,char*) ;
 int free (char*) ;
 int identity_file ;
 int ssh_err (int) ;
 int sshkey_free (struct sshkey*) ;
 int sshkey_load_private (char const*,int *,struct sshkey**,char**) ;
 int sshkey_load_public (char const*,struct sshkey**,char**) ;
 scalar_t__ stat (int ,struct stat*) ;
 int strerror (int ) ;

__attribute__((used)) static void
fingerprint_private(const char *path)
{
 struct stat st;
 char *comment = ((void*)0);
 struct sshkey *public = ((void*)0);
 int r;

 if (stat(identity_file, &st) < 0)
  fatal("%s: %s", path, strerror(errno));
 if ((r = sshkey_load_public(path, &public, &comment)) != 0) {
  debug("load public \"%s\": %s", path, ssh_err(r));
  if ((r = sshkey_load_private(path, ((void*)0),
      &public, &comment)) != 0) {
   debug("load private \"%s\": %s", path, ssh_err(r));
   fatal("%s is not a key file.", path);
  }
 }

 fingerprint_one_key(public, comment);
 sshkey_free(public);
 free(comment);
}
