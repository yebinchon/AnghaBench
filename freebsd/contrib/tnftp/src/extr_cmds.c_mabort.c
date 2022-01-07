
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ confirm (char const*,int *) ;
 int confirmrest ;
 scalar_t__ fromatty ;
 int interactive ;
 scalar_t__ mflag ;

__attribute__((used)) static void
mabort(const char *cmd)
{
 int ointer, oconf;

 if (mflag && fromatty) {
  ointer = interactive;
  oconf = confirmrest;
  interactive = 1;
  confirmrest = 0;
  if (confirm(cmd, ((void*)0))) {
   interactive = ointer;
   confirmrest = oconf;
   return;
  }
  interactive = ointer;
  confirmrest = oconf;
 }
 mflag = 0;
}
