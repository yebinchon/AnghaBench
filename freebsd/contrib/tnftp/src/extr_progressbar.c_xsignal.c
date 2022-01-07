
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigfunc ;
 int errx (int,char*,int) ;
 int xsignal_restart (int,int ,int) ;

sigfunc
xsignal(int sig, sigfunc func)
{
 int restartable;
 switch(sig) {

 case 134:

 case 131:
 case 130:
 case 129:
 case 128:
  restartable = 1;
  break;

 case 135:
 case 133:
 case 132:
  restartable = 0;
  break;

 default:




  errx(1, "xsignal_restart: called with signal %d", sig);
 }

 return(xsignal_restart(sig, func, restartable));
}
