
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISC_MSGSET_GENERAL ;
 int ISC_MSG_FAILED ;
 int isc_error_fatal (char const*,int,char*,char const*,int ) ;
 int isc_msgcat ;
 int isc_msgcat_get (int ,int ,int ,char*) ;

void
isc_error_runtimecheck(const char *file, int line, const char *expression) {
 isc_error_fatal(file, line, "RUNTIME_CHECK(%s) %s", expression,
   isc_msgcat_get(isc_msgcat, ISC_MSGSET_GENERAL,
           ISC_MSG_FAILED, "failed"));
}
