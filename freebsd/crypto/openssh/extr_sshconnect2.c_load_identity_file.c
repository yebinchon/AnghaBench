
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int dummy; } ;
struct sshkey {int dummy; } ;
struct TYPE_5__ {int number_of_password_prompts; int batch_mode; } ;
struct TYPE_4__ {char* filename; int agent_fd; scalar_t__ isprivate; scalar_t__ key; scalar_t__ userprovided; } ;
typedef TYPE_1__ Identity ;


 int ENOENT ;
 int KEY_UNSPEC ;


 int debug2 (char*,...) ;
 int debug3 (char*,char*,int ) ;
 int errno ;
 int error (char*,char*,char*) ;
 int free (char*) ;
 int freezero (char*,int ) ;
 int logit (char*,char*,int ) ;
 int maybe_add_key_to_agent (char*,struct sshkey*,char*,char*) ;
 TYPE_2__ options ;
 char* read_passphrase (char*,int ) ;
 int snprintf (char*,int,char*,char*) ;
 char* ssh_err (int) ;
 int sshkey_load_private_type (int ,char*,char*,struct sshkey**,char**,int*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strerror (int ) ;
 int strlen (char*) ;
 int stub1 (char*,char*,int ) ;

__attribute__((used)) static struct sshkey *
load_identity_file(Identity *id)
{
 struct sshkey *private = ((void*)0);
 char prompt[300], *passphrase, *comment;
 int r, perm_ok = 0, quit = 0, i;
 struct stat st;

 if (stat(id->filename, &st) < 0) {
  (id->userprovided ? logit : debug3)("no such identity: %s: %s",
      id->filename, strerror(errno));
  return ((void*)0);
 }
 snprintf(prompt, sizeof prompt,
     "Enter passphrase for key '%.100s': ", id->filename);
 for (i = 0; i <= options.number_of_password_prompts; i++) {
  if (i == 0)
   passphrase = "";
  else {
   passphrase = read_passphrase(prompt, 0);
   if (*passphrase == '\0') {
    debug2("no passphrase given, try next key");
    free(passphrase);
    break;
   }
  }
  switch ((r = sshkey_load_private_type(KEY_UNSPEC, id->filename,
      passphrase, &private, &comment, &perm_ok))) {
  case 0:
   break;
  case 129:
   if (options.batch_mode) {
    quit = 1;
    break;
   }
   if (i != 0)
    debug2("bad passphrase given, try again...");
   break;
  case 128:
   if (errno == ENOENT) {
    debug2("Load key \"%s\": %s",
        id->filename, ssh_err(r));
    quit = 1;
    break;
   }

  default:
   error("Load key \"%s\": %s", id->filename, ssh_err(r));
   quit = 1;
   break;
  }
  if (!quit && private != ((void*)0) && id->agent_fd == -1 &&
      !(id->key && id->isprivate))
   maybe_add_key_to_agent(id->filename, private, comment,
       passphrase);
  if (i > 0)
   freezero(passphrase, strlen(passphrase));
  free(comment);
  if (private != ((void*)0) || quit)
   break;
 }
 return private;
}
