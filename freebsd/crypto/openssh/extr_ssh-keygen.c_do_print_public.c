
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct sshkey {int dummy; } ;
struct passwd {int dummy; } ;


 int ask_filename (struct passwd*,char*) ;
 int errno ;
 int error (char*,int ) ;
 int exit (int ) ;
 int fatal (char*,int ,int ) ;
 int fprintf (int ,char*) ;
 int have_identity ;
 int identity_file ;
 struct sshkey* load_identity (int ) ;
 int ssh_err (int) ;
 int sshkey_free (struct sshkey*) ;
 int sshkey_write (struct sshkey*,int ) ;
 scalar_t__ stat (int ,struct stat*) ;
 int stdout ;
 int strerror (int ) ;

__attribute__((used)) static void
do_print_public(struct passwd *pw)
{
 struct sshkey *prv;
 struct stat st;
 int r;

 if (!have_identity)
  ask_filename(pw, "Enter file in which the key is");
 if (stat(identity_file, &st) < 0)
  fatal("%s: %s", identity_file, strerror(errno));
 prv = load_identity(identity_file);
 if ((r = sshkey_write(prv, stdout)) != 0)
  error("sshkey_write failed: %s", ssh_err(r));
 sshkey_free(prv);
 fprintf(stdout, "\n");
 exit(0);
}
