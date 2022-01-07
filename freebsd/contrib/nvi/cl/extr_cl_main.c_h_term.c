
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int killersig; } ;


 int CL_SIGTERM ;
 int F_SET (TYPE_1__*,int ) ;
 int GLOBAL_CLP ;
 int SIGTERM ;
 TYPE_1__* clp ;

__attribute__((used)) static void
h_term(int signo)
{
 GLOBAL_CLP;

 F_SET(clp, CL_SIGTERM);
 clp->killersig = SIGTERM;
}
