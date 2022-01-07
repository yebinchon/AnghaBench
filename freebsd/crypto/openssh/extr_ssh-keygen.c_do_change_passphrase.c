
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct sshkey {int dummy; } ;
struct passwd {int dummy; } ;


 int RP_ALLOW_STDIN ;
 int SSH_ERR_KEY_WRONG_PASSPHRASE ;
 int ask_filename (struct passwd*,char*) ;
 int errno ;
 int error (char*,int ,char*) ;
 int exit (int) ;
 int explicit_bzero (char*,int ) ;
 int fatal (char*,int ,char*) ;
 int free (char*) ;
 int have_identity ;
 int identity_file ;
 scalar_t__ identity_new_passphrase ;
 scalar_t__ identity_passphrase ;
 int mprintf (char*,char*) ;
 int new_format_cipher ;
 int printf (char*) ;
 char* read_passphrase (char*,int ) ;
 int rounds ;
 char* ssh_err (int) ;
 int sshkey_free (struct sshkey*) ;
 int sshkey_load_private (int ,char*,struct sshkey**,char**) ;
 int sshkey_save_private (struct sshkey*,int ,char*,char*,int ,int ,int ) ;
 scalar_t__ stat (int ,struct stat*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strerror (int ) ;
 int strlen (char*) ;
 int use_new_format ;
 char* xstrdup (scalar_t__) ;

__attribute__((used)) static void
do_change_passphrase(struct passwd *pw)
{
 char *comment;
 char *old_passphrase, *passphrase1, *passphrase2;
 struct stat st;
 struct sshkey *private;
 int r;

 if (!have_identity)
  ask_filename(pw, "Enter file in which the key is");
 if (stat(identity_file, &st) < 0)
  fatal("%s: %s", identity_file, strerror(errno));

 r = sshkey_load_private(identity_file, "", &private, &comment);
 if (r == SSH_ERR_KEY_WRONG_PASSPHRASE) {
  if (identity_passphrase)
   old_passphrase = xstrdup(identity_passphrase);
  else
   old_passphrase =
       read_passphrase("Enter old passphrase: ",
       RP_ALLOW_STDIN);
  r = sshkey_load_private(identity_file, old_passphrase,
      &private, &comment);
  explicit_bzero(old_passphrase, strlen(old_passphrase));
  free(old_passphrase);
  if (r != 0)
   goto badkey;
 } else if (r != 0) {
 badkey:
  fatal("Failed to load key %s: %s", identity_file, ssh_err(r));
 }
 if (comment)
  mprintf("Key has comment '%s'\n", comment);


 if (identity_new_passphrase) {
  passphrase1 = xstrdup(identity_new_passphrase);
  passphrase2 = ((void*)0);
 } else {
  passphrase1 =
   read_passphrase("Enter new passphrase (empty for no "
       "passphrase): ", RP_ALLOW_STDIN);
  passphrase2 = read_passphrase("Enter same passphrase again: ",
      RP_ALLOW_STDIN);


  if (strcmp(passphrase1, passphrase2) != 0) {
   explicit_bzero(passphrase1, strlen(passphrase1));
   explicit_bzero(passphrase2, strlen(passphrase2));
   free(passphrase1);
   free(passphrase2);
   printf("Pass phrases do not match.  Try again.\n");
   exit(1);
  }

  explicit_bzero(passphrase2, strlen(passphrase2));
  free(passphrase2);
 }


 if ((r = sshkey_save_private(private, identity_file, passphrase1,
     comment, use_new_format, new_format_cipher, rounds)) != 0) {
  error("Saving key \"%s\" failed: %s.",
      identity_file, ssh_err(r));
  explicit_bzero(passphrase1, strlen(passphrase1));
  free(passphrase1);
  sshkey_free(private);
  free(comment);
  exit(1);
 }

 explicit_bzero(passphrase1, strlen(passphrase1));
 free(passphrase1);
 sshkey_free(private);
 free(comment);

 printf("Your identification has been saved with the new passphrase.\n");
 exit(0);
}
