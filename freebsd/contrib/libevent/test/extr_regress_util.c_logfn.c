
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (scalar_t__) ;
 scalar_t__ logmsg ;
 int logsev ;
 scalar_t__ strdup (char const*) ;
 int tt_want (char const*) ;

__attribute__((used)) static void
logfn(int severity, const char *msg)
{
 logsev = severity;
 tt_want(msg);
 if (msg) {
  if (logmsg)
   free(logmsg);
  logmsg = strdup(msg);
 }
}
