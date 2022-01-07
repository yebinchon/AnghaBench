
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CL_SIGINT ;
 int F_SET (int ,int ) ;
 int GLOBAL_CLP ;
 int clp ;

__attribute__((used)) static void
h_int(int signo)
{
 GLOBAL_CLP;

 F_SET(clp, CL_SIGINT);
}
