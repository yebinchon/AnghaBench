
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int lock; int mctx; int running; } ;
typedef TYPE_1__ isc_httpdmgr_t ;
struct TYPE_8__ {scalar_t__ headerlen; struct TYPE_8__* headerdata; int sock; TYPE_1__* mgr; } ;
typedef TYPE_2__ isc_httpd_t ;


 int ISC_LIST_UNLINK (int ,TYPE_2__*,int ) ;
 int LOCK (int *) ;
 int UNLOCK (int *) ;
 int httpdmgr_destroy (TYPE_1__*) ;
 int isc_mem_put (int ,TYPE_2__*,int) ;
 int isc_socket_detach (int *) ;
 int link ;

__attribute__((used)) static void
destroy_client(isc_httpd_t **httpdp)
{
 isc_httpd_t *httpd = *httpdp;
 isc_httpdmgr_t *httpdmgr = httpd->mgr;

 *httpdp = ((void*)0);

 LOCK(&httpdmgr->lock);

 isc_socket_detach(&httpd->sock);
 ISC_LIST_UNLINK(httpdmgr->running, httpd, link);

 if (httpd->headerlen > 0)
  isc_mem_put(httpdmgr->mctx, httpd->headerdata,
       httpd->headerlen);

 isc_mem_put(httpdmgr->mctx, httpd, sizeof(isc_httpd_t));

 UNLOCK(&httpdmgr->lock);

 httpdmgr_destroy(httpdmgr);
}
