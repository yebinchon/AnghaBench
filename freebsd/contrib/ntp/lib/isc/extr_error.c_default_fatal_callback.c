
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int ISC_MSGSET_GENERAL ;
 int ISC_MSG_FATALERROR ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int isc_msgcat ;
 char* isc_msgcat_get (int ,int ,int ,char*) ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static void
default_fatal_callback(const char *file, int line, const char *format,
         va_list args)
{
 fprintf(stderr, "%s:%d: %s: ", file, line,
  isc_msgcat_get(isc_msgcat, ISC_MSGSET_GENERAL,
          ISC_MSG_FATALERROR, "fatal error"));
 vfprintf(stderr, format, args);
 fprintf(stderr, "\n");
 fflush(stderr);
}
