
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int lock; int task; int running; int sock; } ;
typedef TYPE_1__ isc_httpdmgr_t ;
struct TYPE_9__ {int sock; } ;
typedef TYPE_2__ isc_httpd_t ;


 int ENTER (char*) ;
 int EXIT (char*) ;
 TYPE_2__* ISC_LIST_HEAD (int ) ;
 TYPE_2__* ISC_LIST_NEXT (TYPE_2__*,int ) ;
 int ISC_SOCKCANCEL_ALL ;
 int LOCK (int *) ;
 int MSETSHUTTINGDOWN (TYPE_1__*) ;
 int UNLOCK (int *) ;
 int isc_socket_cancel (int ,int ,int ) ;
 int link ;

void
isc_httpdmgr_shutdown(isc_httpdmgr_t **httpdmgrp)
{
 isc_httpdmgr_t *httpdmgr;
 isc_httpd_t *httpd;
 httpdmgr = *httpdmgrp;
 *httpdmgrp = ((void*)0);

 ENTER("isc_httpdmgr_shutdown");

 LOCK(&httpdmgr->lock);

 MSETSHUTTINGDOWN(httpdmgr);

 isc_socket_cancel(httpdmgr->sock, httpdmgr->task, ISC_SOCKCANCEL_ALL);

 httpd = ISC_LIST_HEAD(httpdmgr->running);
 while (httpd != ((void*)0)) {
  isc_socket_cancel(httpd->sock, httpdmgr->task,
      ISC_SOCKCANCEL_ALL);
  httpd = ISC_LIST_NEXT(httpd, link);
 }

 UNLOCK(&httpdmgr->lock);

 EXIT("isc_httpdmgr_shutdown");
}
