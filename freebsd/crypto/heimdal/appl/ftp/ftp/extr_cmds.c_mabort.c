
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RETSIGTYPE ;


 scalar_t__ confirm (char*,int ) ;
 int fflush (int ) ;
 scalar_t__ fromatty ;
 int interactive ;
 int jabort ;
 int longjmp (int ,int ) ;
 scalar_t__ mflag ;
 int mname ;
 int printf (char*) ;
 int stdout ;

__attribute__((used)) static RETSIGTYPE
mabort(int signo)
{
 int ointer;

 printf("\n");
 fflush(stdout);
 if (mflag && fromatty) {
  ointer = interactive;
  interactive = 1;
  if (confirm("Continue with", mname)) {
   interactive = ointer;
   longjmp(jabort,0);
  }
  interactive = ointer;
 }
 mflag = 0;
 longjmp(jabort,0);
}
