
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tm ;
struct tm {int dummy; } ;
typedef int ldns_status ;
typedef int ldns_rdf ;
typedef int ldns_buffer ;


 int ldns_buffer_printf (int *,char*,char*) ;
 int ldns_buffer_status (int *) ;
 int ldns_rdf2native_int32 (int const*) ;
 scalar_t__ ldns_serial_arithmitics_gmtime_r (int ,int ,struct tm*) ;
 int memset (struct tm*,int ,int) ;
 scalar_t__ strftime (char*,int,char*,struct tm*) ;
 int time (int *) ;

ldns_status
ldns_rdf2buffer_str_time(ldns_buffer *output, const ldns_rdf *rdf)
{

 struct tm tm;
 char date_buf[16];

 memset(&tm, 0, sizeof(tm));
 if (ldns_serial_arithmitics_gmtime_r(ldns_rdf2native_int32(rdf), time(((void*)0)), &tm)
     && strftime(date_buf, 15, "%Y%m%d%H%M%S", &tm)) {
  ldns_buffer_printf(output, "%s", date_buf);
 }
 return ldns_buffer_status(output);
}
