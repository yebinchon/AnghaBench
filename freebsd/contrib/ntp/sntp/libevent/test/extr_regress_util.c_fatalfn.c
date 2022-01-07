
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fatal_want_message ;
 scalar_t__ fatal_want_severity ;
 int logmsg ;
 scalar_t__ logsev ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void
fatalfn(int exitcode)
{
 if (logsev != fatal_want_severity ||
     !logmsg ||
     strcmp(logmsg, fatal_want_message))
  exit(0);
 else
  exit(exitcode);
}
