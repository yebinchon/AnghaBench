
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_assertiontype_t ;


 int DebugBreak () ;
 int LOG_ERR ;
 int abort () ;
 scalar_t__ debug ;
 int isc_assertion_setcallback (int *) ;
 int isc_assertion_typetotext (int ) ;
 int msyslog (int ,char*,...) ;

__attribute__((used)) static void
assertion_failed(
 const char *file,
 int line,
 isc_assertiontype_t type,
 const char *cond
 )
{
 isc_assertion_setcallback(((void*)0));

 msyslog(LOG_ERR, "%s:%d: %s(%s) failed",
  file, line, isc_assertion_typetotext(type), cond);
 msyslog(LOG_ERR, "exiting (due to assertion failure)");






 abort();
}
