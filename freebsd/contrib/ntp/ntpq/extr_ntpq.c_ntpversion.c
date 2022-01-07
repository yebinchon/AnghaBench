
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct parse {scalar_t__ nargs; TYPE_1__* argval; } ;
struct TYPE_2__ {scalar_t__ uval; } ;
typedef int FILE ;


 scalar_t__ NTP_OLDVERSION ;
 scalar_t__ NTP_VERSION ;
 int fprintf (int ,char*,scalar_t__,...) ;
 int pktversion ;
 int stderr ;

__attribute__((used)) static void
ntpversion(
 struct parse *pcmd,
 FILE *fp
 )
{
 if (pcmd->nargs == 0) {
  (void) fprintf(fp,
          "NTP version being claimed is %d\n", pktversion);
 } else {
  if (pcmd->argval[0].uval < NTP_OLDVERSION
      || pcmd->argval[0].uval > NTP_VERSION) {
   (void) fprintf(stderr, "versions %d to %d, please\n",
           NTP_OLDVERSION, NTP_VERSION);
  } else {
   pktversion = (u_char) pcmd->argval[0].uval;
  }
 }
}
