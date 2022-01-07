
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
 int isc_buffer_add (int *,int) ;
 int isc_buffer_availablelength (int *) ;
 int isc_buffer_used (int *) ;
 int sprintf (int ,char*) ;

isc_result_t
isc_httpd_endheaders(isc_httpd_t *httpd)
{
 isc_result_t result;

 while (isc_buffer_availablelength(&httpd->headerbuffer) < 2) {
  result = grow_headerspace(httpd);
  if (result != ISC_R_SUCCESS)
   return (result);
 }

 sprintf(isc_buffer_used(&httpd->headerbuffer), "\r\n");
 isc_buffer_add(&httpd->headerbuffer, 2);

 return (ISC_R_SUCCESS);
}
