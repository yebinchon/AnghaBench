
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
struct ssh_krl {int dummy; } ;
struct passwd {int dummy; } ;


 int exit (int) ;
 int fatal (char*,...) ;
 int free (char*) ;
 char* identity_file ;
 int load_krl (char*,struct ssh_krl**) ;
 int printf (char*,char*,char*,char*,char*,char*) ;
 int ssh_err (int) ;
 int ssh_krl_check_key (struct ssh_krl*,struct sshkey*) ;
 int ssh_krl_free (struct ssh_krl*) ;
 int sshkey_free (struct sshkey*) ;
 int sshkey_load_public (char*,struct sshkey**,char**) ;

__attribute__((used)) static void
do_check_krl(struct passwd *pw, int argc, char **argv)
{
 int i, r, ret = 0;
 char *comment;
 struct ssh_krl *krl;
 struct sshkey *k;

 if (*identity_file == '\0')
  fatal("KRL checking requires an input file");
 load_krl(identity_file, &krl);
 for (i = 0; i < argc; i++) {
  if ((r = sshkey_load_public(argv[i], &k, &comment)) != 0)
   fatal("Cannot load public key %s: %s",
       argv[i], ssh_err(r));
  r = ssh_krl_check_key(krl, k);
  printf("%s%s%s%s: %s\n", argv[i],
      *comment ? " (" : "", comment, *comment ? ")" : "",
      r == 0 ? "ok" : "REVOKED");
  if (r != 0)
   ret = 1;
  sshkey_free(k);
  free(comment);
 }
 ssh_krl_free(krl);
 exit(ret);
}
