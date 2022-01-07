
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct parse {int nargs; TYPE_1__* argval; } ;
struct TYPE_2__ {char* string; } ;
typedef int FILE ;


 int authtrust (scalar_t__,int) ;
 int authusekey (scalar_t__,int ,int *) ;
 int fprintf (int *,char*) ;
 scalar_t__ getkeyid (char*) ;
 char* getpass_keytype (int ) ;
 scalar_t__ info_auth_keyid ;
 int info_auth_keytype ;

__attribute__((used)) static void
passwd(
 struct parse *pcmd,
 FILE *fp
 )
{
 char *pass;

 if (info_auth_keyid == 0) {
  info_auth_keyid = getkeyid("Keyid: ");
  if (info_auth_keyid == 0) {
   (void)fprintf(fp, "Keyid must be defined\n");
   return;
  }
 }
 if (pcmd->nargs >= 1)
  pass = pcmd->argval[0].string;
 else {
  pass = getpass_keytype(info_auth_keytype);
  if ('\0' == *pass) {
   fprintf(fp, "Password unchanged\n");
   return;
  }
 }
 authusekey(info_auth_keyid, info_auth_keytype, (u_char *)pass);
 authtrust(info_auth_keyid, 1);
}
