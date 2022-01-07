
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int labuf ;


 int A_TEMP ;
 int CurrentLA ;
 int GlobalMacros ;
 int getla () ;
 int macdefine (int *,int ,int ,char*) ;
 int macid (char*) ;
 int sm_snprintf (char*,int,char*,int ) ;

void
sm_getla()
{
 char labuf[8];

 CurrentLA = getla();
 (void) sm_snprintf(labuf, sizeof(labuf), "%d", CurrentLA);
 macdefine(&GlobalMacros, A_TEMP, macid("{load_avg}"), labuf);
}
