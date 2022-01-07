
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_3__ {int recvlen; char* recvbuf; char* url; char* protocol; int flags; scalar_t__* querystring; int method; } ;
typedef TYPE_1__ isc_httpd_t ;


 scalar_t__ BUFLENOK (char*) ;
 int ENTER (char*) ;
 int EXIT (char*) ;
 int HTTPD_CLOSE ;
 int HTTPD_FOUNDHOST ;
 int ISC_HTTPD_METHODGET ;
 int ISC_HTTPD_METHODPOST ;
 int ISC_R_NOMEMORY ;
 int ISC_R_NOTFOUND ;
 int ISC_R_RANGE ;
 int ISC_R_SUCCESS ;
 scalar_t__ LENGTHOK (char*) ;
 scalar_t__* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static isc_result_t
process_request(isc_httpd_t *httpd, int length)
{
 char *s;
 char *p;
 int delim;

 ENTER("request");

 httpd->recvlen += length;

 httpd->recvbuf[httpd->recvlen] = 0;





 s = strstr(httpd->recvbuf, "\r\n\r\n");
 delim = 1;
 if (s == ((void*)0)) {
  s = strstr(httpd->recvbuf, "\n\n");
  delim = 2;
 }
 if (s == ((void*)0))
  return (ISC_R_NOTFOUND);





 if (strncmp(httpd->recvbuf, "GET ", 4) == 0) {
  httpd->method = ISC_HTTPD_METHODGET;
  p = httpd->recvbuf + 4;
 } else if (strncmp(httpd->recvbuf, "POST ", 5) == 0) {
  httpd->method = ISC_HTTPD_METHODPOST;
  p = httpd->recvbuf + 5;
 } else {
  return (ISC_R_RANGE);
 }
 s = p;
 while (LENGTHOK(s) && BUFLENOK(s) &&
        (*s != '\n' && *s != '\r' && *s != '\0' && *s != ' '))
  s++;
 if (!LENGTHOK(s))
  return (ISC_R_NOTFOUND);
 if (!BUFLENOK(s))
  return (ISC_R_NOMEMORY);
 *s = 0;




 if ((strncmp(p, "http:/", 6) == 0)
     || (strncmp(p, "https:/", 7) == 0)) {

  while (*p != '/' && *p != 0)
   p++;
  if (*p == 0)
   return (ISC_R_RANGE);
  p++;

  while (*p != '/' && *p != 0)
   p++;
  if (*p == 0)
   return (ISC_R_RANGE);
  p++;

  while (*p != '/' && *p != 0)
   p++;
  if (*p == 0) {
   p--;
   *p = '/';
  }
 }

 httpd->url = p;
 p = s + delim;
 s = p;





 httpd->querystring = strchr(httpd->url, '?');
 if (httpd->querystring != ((void*)0)) {
  *(httpd->querystring) = 0;
  httpd->querystring++;
 }





 while (LENGTHOK(s) && BUFLENOK(s) &&
        (*s != '\n' && *s != '\r' && *s != '\0'))
  s++;
 if (!LENGTHOK(s))
  return (ISC_R_NOTFOUND);
 if (!BUFLENOK(s))
  return (ISC_R_NOMEMORY);
 *s = 0;
 if ((strncmp(p, "HTTP/1.0", 8) != 0)
     && (strncmp(p, "HTTP/1.1", 8) != 0))
  return (ISC_R_RANGE);
 httpd->protocol = p;
 p = s + 1;
 s = p;

 if (strstr(s, "Connection: close") != ((void*)0))
  httpd->flags |= HTTPD_CLOSE;

 if (strstr(s, "Host: ") != ((void*)0))
  httpd->flags |= HTTPD_FOUNDHOST;




 if (strcmp(httpd->protocol, "HTTP/1.1") == 0
     && ((httpd->flags & HTTPD_FOUNDHOST) == 0))
  return (ISC_R_RANGE);

 EXIT("request");

 return (ISC_R_SUCCESS);
}
