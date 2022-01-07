
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RETSIGTYPE ;


 int abortprox ;
 scalar_t__ connected ;
 int longjmp (int ,int) ;
 int proxflag ;
 int proxy ;
 int pswitch (int) ;

__attribute__((used)) static RETSIGTYPE
proxabort(int sig)
{

 if (!proxy) {
  pswitch(1);
 }
 if (connected) {
  proxflag = 1;
 }
 else {
  proxflag = 0;
 }
 pswitch(0);
 longjmp(abortprox,1);
}
