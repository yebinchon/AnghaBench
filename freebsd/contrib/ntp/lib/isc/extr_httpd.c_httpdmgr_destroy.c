
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int isc_mem_t ;
struct TYPE_9__ {int url; } ;
typedef TYPE_1__ isc_httpdurl_t ;
struct TYPE_10__ {int * mctx; int cb_arg; int (* ondestroy ) (int ) ;int lock; int urls; int * timermgr; int task; int sock; int running; } ;
typedef TYPE_2__ isc_httpdmgr_t ;


 int ENTER (char*) ;
 int EXIT (char*) ;
 int ISC_LIST_EMPTY (int ) ;
 TYPE_1__* ISC_LIST_HEAD (int ) ;
 int ISC_LIST_UNLINK (int ,TYPE_1__*,int ) ;
 int LOCK (int *) ;
 int MSHUTTINGDOWN (TYPE_2__*) ;
 int NOTICE (char*) ;
 int UNLOCK (int *) ;
 int isc_mem_free (int *,int ) ;
 int isc_mem_put (int *,TYPE_1__*,int) ;
 int isc_mem_putanddetach (int **,TYPE_2__*,int) ;
 int isc_mutex_destroy (int *) ;
 int isc_socket_detach (int *) ;
 int isc_task_detach (int *) ;
 int link ;
 int stub1 (int ) ;

__attribute__((used)) static void
httpdmgr_destroy(isc_httpdmgr_t *httpdmgr)
{
 isc_mem_t *mctx;
 isc_httpdurl_t *url;

 ENTER("httpdmgr_destroy");

 LOCK(&httpdmgr->lock);

 if (!MSHUTTINGDOWN(httpdmgr)) {
  NOTICE("httpdmgr_destroy not shutting down yet");
  UNLOCK(&httpdmgr->lock);
  return;
 }




 if (!ISC_LIST_EMPTY(httpdmgr->running)) {
  NOTICE("httpdmgr_destroy clients still active");
  UNLOCK(&httpdmgr->lock);
  return;
 }

 NOTICE("httpdmgr_destroy detaching socket, task, and timermgr");

 isc_socket_detach(&httpdmgr->sock);
 isc_task_detach(&httpdmgr->task);
 httpdmgr->timermgr = ((void*)0);





 url = ISC_LIST_HEAD(httpdmgr->urls);
 while (url != ((void*)0)) {
  isc_mem_free(httpdmgr->mctx, url->url);
  ISC_LIST_UNLINK(httpdmgr->urls, url, link);
  isc_mem_put(httpdmgr->mctx, url, sizeof(isc_httpdurl_t));
  url = ISC_LIST_HEAD(httpdmgr->urls);
 }

 UNLOCK(&httpdmgr->lock);
 (void)isc_mutex_destroy(&httpdmgr->lock);

 if (httpdmgr->ondestroy != ((void*)0))
  (httpdmgr->ondestroy)(httpdmgr->cb_arg);

 mctx = httpdmgr->mctx;
 isc_mem_putanddetach(&mctx, httpdmgr, sizeof(isc_httpdmgr_t));

 EXIT("httpdmgr_destroy");
}
