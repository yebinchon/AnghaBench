
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct parse {scalar_t__ nargs; TYPE_1__* argval; } ;
struct TYPE_2__ {scalar_t__ uval; } ;
typedef int FILE ;


 scalar_t__ NTP_MAXKEY ;
 int fprintf (int *,char*,...) ;
 scalar_t__ info_auth_keyid ;

__attribute__((used)) static void
keyid(
 struct parse *pcmd,
 FILE *fp
 )
{
 if (pcmd->nargs == 0) {
  if (info_auth_keyid == 0)
      (void) fprintf(fp, "no keyid defined\n");
  else
      (void) fprintf(fp, "keyid is %lu\n", (u_long)info_auth_keyid);
 } else {

  if(pcmd->argval[0].uval > NTP_MAXKEY)
      (void) fprintf(fp, "Invalid key identifier\n");
  info_auth_keyid = pcmd->argval[0].uval;
 }
}
