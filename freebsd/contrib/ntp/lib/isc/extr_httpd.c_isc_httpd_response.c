
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ isc_result_t ;
struct TYPE_4__ {char* protocol; char* retmsg; int retcode; int headerbuffer; } ;
typedef TYPE_1__ isc_httpd_t ;


 scalar_t__ ISC_R_SUCCESS ;
 scalar_t__ grow_headerspace (TYPE_1__*) ;
 int isc_buffer_add (int *,unsigned int) ;
 unsigned int isc_buffer_availablelength (int *) ;
 int isc_buffer_used (int *) ;
 int sprintf (int ,char*,char*,int,char*) ;
 int strlen (char*) ;

isc_result_t
isc_httpd_response(isc_httpd_t *httpd)
{
 isc_result_t result;
 unsigned int needlen;

 needlen = strlen(httpd->protocol) + 1;
 needlen += 3 + 1;
 needlen += strlen(httpd->retmsg) + 2;

 while (isc_buffer_availablelength(&httpd->headerbuffer) < needlen) {
  result = grow_headerspace(httpd);
  if (result != ISC_R_SUCCESS)
   return (result);
 }

 sprintf(isc_buffer_used(&httpd->headerbuffer), "%s %03d %s\r\n",
  httpd->protocol, httpd->retcode, httpd->retmsg);
 isc_buffer_add(&httpd->headerbuffer, needlen);

 return (ISC_R_SUCCESS);
}
