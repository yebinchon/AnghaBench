
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bodybuffer; int headerbuffer; scalar_t__ flags; int * protocol; int * querystring; int * url; int method; scalar_t__ recvlen; scalar_t__* recvbuf; } ;
typedef TYPE_1__ isc_httpd_t ;


 int INSIST (int) ;
 int ISC_HTTPD_ISRECV (TYPE_1__*) ;
 int ISC_HTTPD_METHODUNKNOWN ;
 int ISC_LINK_LINKED (int *,int ) ;
 int isc_buffer_clear (int *) ;
 int isc_buffer_invalidate (int *) ;
 int link ;

__attribute__((used)) static void
reset_client(isc_httpd_t *httpd)
{




 INSIST(ISC_HTTPD_ISRECV(httpd));
 INSIST(!ISC_LINK_LINKED(&httpd->headerbuffer, link));
 INSIST(!ISC_LINK_LINKED(&httpd->bodybuffer, link));

 httpd->recvbuf[0] = 0;
 httpd->recvlen = 0;
 httpd->method = ISC_HTTPD_METHODUNKNOWN;
 httpd->url = ((void*)0);
 httpd->querystring = ((void*)0);
 httpd->protocol = ((void*)0);
 httpd->flags = 0;

 isc_buffer_clear(&httpd->headerbuffer);
 isc_buffer_invalidate(&httpd->bodybuffer);
}
