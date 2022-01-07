
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ isc_result_t ;
struct TYPE_4__ {int headerbuffer; } ;
typedef TYPE_1__ isc_httpd_t ;


 scalar_t__ ISC_R_SUCCESS ;
 scalar_t__ grow_headerspace (TYPE_1__*) ;
 int isc_buffer_add (int *,unsigned int) ;
 unsigned int isc_buffer_availablelength (int *) ;
 int isc_buffer_used (int *) ;
 int sprintf (char*,char*,...) ;
 unsigned int strlen (char const*) ;

isc_result_t
isc_httpd_addheaderuint(isc_httpd_t *httpd, const char *name, int val) {
 isc_result_t result;
 unsigned int needlen;
 char buf[sizeof "18446744073709551616"];

 sprintf(buf, "%d", val);

 needlen = strlen(name);
 needlen += 2 + strlen(buf);
 needlen += 2;

 while (isc_buffer_availablelength(&httpd->headerbuffer) < needlen) {
  result = grow_headerspace(httpd);
  if (result != ISC_R_SUCCESS)
   return (result);
 }

 sprintf(isc_buffer_used(&httpd->headerbuffer),
  "%s: %s\r\n", name, buf);

 isc_buffer_add(&httpd->headerbuffer, needlen);

 return (ISC_R_SUCCESS);
}
