
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_assertiontype_t ;


 int abort () ;
 int isc_assertion_failed_cb (char const*,int,int ,char const*) ;

void
isc_assertion_failed(const char *file, int line, isc_assertiontype_t type,
       const char *cond)
{
 isc_assertion_failed_cb(file, line, type, cond);
 abort();

}
