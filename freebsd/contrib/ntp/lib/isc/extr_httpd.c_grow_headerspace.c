
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_7__ {int length; int base; } ;
typedef TYPE_2__ isc_region_t ;
struct TYPE_8__ {unsigned int headerlen; TYPE_1__* mgr; int headerbuffer; } ;
typedef TYPE_3__ isc_httpd_t ;
struct TYPE_6__ {int mctx; } ;


 unsigned int HTTP_SENDGROW ;
 unsigned int HTTP_SEND_MAXLEN ;
 int ISC_R_NOMEMORY ;
 int ISC_R_NOSPACE ;
 int ISC_R_SUCCESS ;
 int isc_buffer_region (int *,TYPE_2__*) ;
 int isc_buffer_reinit (int *,char*,unsigned int) ;
 char* isc_mem_get (int ,unsigned int) ;
 int isc_mem_put (int ,int ,int ) ;

__attribute__((used)) static isc_result_t
grow_headerspace(isc_httpd_t *httpd)
{
 char *newspace;
 unsigned int newlen;
 isc_region_t r;

 newlen = httpd->headerlen + HTTP_SENDGROW;
 if (newlen > HTTP_SEND_MAXLEN)
  return (ISC_R_NOSPACE);

 newspace = isc_mem_get(httpd->mgr->mctx, newlen);
 if (newspace == ((void*)0))
  return (ISC_R_NOMEMORY);
 isc_buffer_region(&httpd->headerbuffer, &r);
 isc_buffer_reinit(&httpd->headerbuffer, newspace, newlen);

 isc_mem_put(httpd->mgr->mctx, r.base, r.length);

 return (ISC_R_SUCCESS);
}
