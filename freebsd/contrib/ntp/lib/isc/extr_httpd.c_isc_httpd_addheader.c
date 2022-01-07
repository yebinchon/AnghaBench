
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
 int sprintf (int ,char*,char const*,...) ;
 int strlen (char const*) ;

isc_result_t
isc_httpd_addheader(isc_httpd_t *httpd, const char *name,
      const char *val)
{
 isc_result_t result;
 unsigned int needlen;

 needlen = strlen(name);
 if (val != ((void*)0))
  needlen += 2 + strlen(val);
 needlen += 2;

 while (isc_buffer_availablelength(&httpd->headerbuffer) < needlen) {
  result = grow_headerspace(httpd);
  if (result != ISC_R_SUCCESS)
   return (result);
 }

 if (val != ((void*)0))
  sprintf(isc_buffer_used(&httpd->headerbuffer),
   "%s: %s\r\n", name, val);
 else
  sprintf(isc_buffer_used(&httpd->headerbuffer),
   "%s\r\n", name);

 isc_buffer_add(&httpd->headerbuffer, needlen);

 return (ISC_R_SUCCESS);
}
