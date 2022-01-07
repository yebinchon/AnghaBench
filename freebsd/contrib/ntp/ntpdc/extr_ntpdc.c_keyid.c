
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct parse {scalar_t__ nargs; TYPE_1__* argval; } ;
struct TYPE_2__ {scalar_t__ uval; } ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 scalar_t__ info_auth_keyid ;
 int keyid_entered ;

__attribute__((used)) static void
keyid(
 struct parse *pcmd,
 FILE *fp
 )
{
 if (pcmd->nargs == 0) {
  if (info_auth_keyid == 0 && !keyid_entered)
      (void) fprintf(fp, "no keyid defined\n");
  else if (info_auth_keyid == 0 && keyid_entered)
      (void) fprintf(fp, "no keyid will be sent\n");
  else
      (void) fprintf(fp, "keyid is %lu\n", (u_long)info_auth_keyid);
 } else {
  info_auth_keyid = pcmd->argval[0].uval;
  keyid_entered = 1;
 }
}
