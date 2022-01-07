
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sshkey_cert {int dummy; } ;
struct sshauthopt {int dummy; } ;
struct ssh {int dummy; } ;
struct passwd {int dummy; } ;
struct TYPE_2__ {int strict_modes; } ;
typedef int FILE ;


 int * auth_openprincipals (char*,struct passwd*,int ) ;
 int debug (char*,char*) ;
 int fclose (int *) ;
 TYPE_1__ options ;
 int process_principals (struct ssh*,int *,char*,struct sshkey_cert*,struct sshauthopt**) ;
 int restore_uid () ;
 int temporarily_use_uid (struct passwd*) ;

__attribute__((used)) static int
match_principals_file(struct ssh *ssh, struct passwd *pw, char *file,
    struct sshkey_cert *cert, struct sshauthopt **authoptsp)
{
 FILE *f;
 int success;

 if (authoptsp != ((void*)0))
  *authoptsp = ((void*)0);

 temporarily_use_uid(pw);
 debug("trying authorized principals file %s", file);
 if ((f = auth_openprincipals(file, pw, options.strict_modes)) == ((void*)0)) {
  restore_uid();
  return 0;
 }
 success = process_principals(ssh, f, file, cert, authoptsp);
 fclose(f);
 restore_uid();
 return success;
}
