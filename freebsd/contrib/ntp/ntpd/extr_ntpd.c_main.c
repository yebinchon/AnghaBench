
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int PROC_STACKGAP_CTL ;
 int PROC_STACKGAP_DISABLE ;
 int P_PID ;
 int getpid () ;
 int ntpdmain (int,char**) ;
 int procctl (int ,int ,int ,int*) ;

int
main(
 int argc,
 char *argv[]
 )
{
 return ntpdmain(argc, argv);
}
