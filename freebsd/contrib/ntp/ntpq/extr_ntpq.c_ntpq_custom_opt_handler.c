
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tOptions ;
struct TYPE_3__ {int optValue; char* pzLastArg; } ;
typedef TYPE_1__ tOptDesc ;


 int ADDCMD (char*) ;
 int exit (int) ;
 int fprintf (int ,char*,int,int) ;
 int stderr ;

void
ntpq_custom_opt_handler(
 tOptions *pOptions,
 tOptDesc *pOptDesc
 )
{
 switch (pOptDesc->optValue) {

 default:
  fprintf(stderr,
   "ntpq_custom_opt_handler unexpected option '%c' (%d)\n",
   pOptDesc->optValue, pOptDesc->optValue);
  exit(1);

 case 'c':
  ADDCMD(pOptDesc->pzLastArg);
  break;

 case 'p':
  ADDCMD("peers");
  break;
 }
}
