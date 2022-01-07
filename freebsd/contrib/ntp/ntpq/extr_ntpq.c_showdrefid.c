
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parse {scalar_t__ nargs; TYPE_1__* argval; } ;
struct TYPE_2__ {int string; } ;
typedef int FILE ;


 int REFID_HASH ;
 int REFID_IPV4 ;
 scalar_t__ STREQ (int ,char*) ;
 int drefid ;
 int fprintf (int *,char*,...) ;
 char* showdrefid2str () ;

__attribute__((used)) static void
showdrefid(
 struct parse *pcmd,
 FILE *fp
 )
{
 if (pcmd->nargs == 0) {
  (void) fprintf(fp, "drefid value is %s\n", showdrefid2str());
  return;
 } else if (STREQ(pcmd->argval[0].string, "hash")) {
  drefid = REFID_HASH;
 } else if (STREQ(pcmd->argval[0].string, "ipv4")) {
  drefid = REFID_IPV4;
 } else {
  (void) fprintf(fp, "What?\n");
  return;
 }
 (void) fprintf(fp, "drefid value set to %s\n", showdrefid2str());
}
