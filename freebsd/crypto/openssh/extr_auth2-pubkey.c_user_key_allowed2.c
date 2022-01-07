
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sshkey {int dummy; } ;
struct sshauthopt {int dummy; } ;
struct ssh {int dummy; } ;
struct passwd {int dummy; } ;
struct TYPE_2__ {int strict_modes; } ;
typedef int FILE ;


 int * auth_openkeyfile (char*,struct passwd*,int ) ;
 int check_authkeys_file (struct ssh*,struct passwd*,int *,char*,struct sshkey*,struct sshauthopt**) ;
 int debug (char*,char*) ;
 int fclose (int *) ;
 TYPE_1__ options ;
 int restore_uid () ;
 int temporarily_use_uid (struct passwd*) ;

__attribute__((used)) static int
user_key_allowed2(struct ssh *ssh, struct passwd *pw, struct sshkey *key,
    char *file, struct sshauthopt **authoptsp)
{
 FILE *f;
 int found_key = 0;

 if (authoptsp != ((void*)0))
  *authoptsp = ((void*)0);


 temporarily_use_uid(pw);

 debug("trying public key file %s", file);
 if ((f = auth_openkeyfile(file, pw, options.strict_modes)) != ((void*)0)) {
  found_key = check_authkeys_file(ssh, pw, f, file,
      key, authoptsp);
  fclose(f);
 }

 restore_uid();
 return found_key;
}
