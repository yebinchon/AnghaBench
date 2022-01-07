
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int isc_task_t ;
struct TYPE_19__ {scalar_t__ result; int newsocket; } ;
typedef TYPE_1__ isc_socket_newconnev_t ;
typedef int isc_sockaddr_t ;
typedef scalar_t__ isc_result_t ;
struct TYPE_20__ {unsigned char* base; scalar_t__ length; } ;
typedef TYPE_2__ isc_region_t ;
struct TYPE_21__ {int lock; int sock; int mctx; int running; int cb_arg; int (* client_ok ) (int *,int ) ;} ;
typedef TYPE_3__ isc_httpdmgr_t ;
struct TYPE_22__ {int headerlen; int sock; scalar_t__ recvbuf; int bodybuffer; int bufflist; int * headerdata; int headerbuffer; scalar_t__ flags; TYPE_3__* mgr; } ;
typedef TYPE_4__ isc_httpd_t ;
struct TYPE_23__ {TYPE_3__* ev_arg; } ;
typedef TYPE_5__ isc_event_t ;


 int ENTER (char*) ;
 int EXIT (char*) ;
 scalar_t__ HTTP_RECVLEN ;
 int HTTP_SENDGROW ;
 int ISC_HTTPD_SETRECV (TYPE_4__*) ;
 int ISC_LINK_INIT (TYPE_4__*,int ) ;
 int ISC_LIST_APPEND (int ,TYPE_4__*,int ) ;
 int ISC_LIST_INIT (int ) ;
 scalar_t__ ISC_R_CANCELED ;
 scalar_t__ ISC_R_SUCCESS ;
 int LOCK (int *) ;
 scalar_t__ MSHUTTINGDOWN (TYPE_3__*) ;
 int NOTICE (char*) ;
 int POST (scalar_t__) ;
 int UNLOCK (int *) ;
 int httpdmgr_destroy (TYPE_3__*) ;
 int isc_buffer_init (int *,int *,int) ;
 int isc_buffer_initnull (int *) ;
 int isc_event_free (TYPE_5__**) ;
 int isc_httpd_recvdone ;
 void* isc_mem_get (int ,int) ;
 int isc_mem_put (int ,TYPE_4__*,int) ;
 scalar_t__ isc_socket_accept (int ,int *,void (*) (int *,TYPE_5__*),TYPE_3__*) ;
 int isc_socket_detach (int *) ;
 int isc_socket_getpeername (int ,int *) ;
 scalar_t__ isc_socket_recv (int ,TYPE_2__*,int,int *,int ,TYPE_4__*) ;
 int isc_socket_setname (int ,char*,int *) ;
 int link ;
 int reset_client (TYPE_4__*) ;
 int stub1 (int *,int ) ;

__attribute__((used)) static void
isc_httpd_accept(isc_task_t *task, isc_event_t *ev)
{
 isc_result_t result;
 isc_httpdmgr_t *httpdmgr = ev->ev_arg;
 isc_httpd_t *httpd;
 isc_region_t r;
 isc_socket_newconnev_t *nev = (isc_socket_newconnev_t *)ev;
 isc_sockaddr_t peeraddr;

 ENTER("accept");

 LOCK(&httpdmgr->lock);
 if (MSHUTTINGDOWN(httpdmgr)) {
  NOTICE("accept shutting down, goto out");
  goto out;
 }

 if (nev->result == ISC_R_CANCELED) {
  NOTICE("accept canceled, goto out");
  goto out;
 }

 if (nev->result != ISC_R_SUCCESS) {

  NOTICE("accept returned failure, goto requeue");
  goto requeue;
 }

 (void)isc_socket_getpeername(nev->newsocket, &peeraddr);
 if (httpdmgr->client_ok != ((void*)0) &&
     !(httpdmgr->client_ok)(&peeraddr, httpdmgr->cb_arg)) {
  isc_socket_detach(&nev->newsocket);
  goto requeue;
 }

 httpd = isc_mem_get(httpdmgr->mctx, sizeof(isc_httpd_t));
 if (httpd == ((void*)0)) {

  NOTICE("accept failed to allocate memory, goto requeue");
  isc_socket_detach(&nev->newsocket);
  goto requeue;
 }

 httpd->mgr = httpdmgr;
 ISC_LINK_INIT(httpd, link);
 ISC_LIST_APPEND(httpdmgr->running, httpd, link);
 ISC_HTTPD_SETRECV(httpd);
 httpd->sock = nev->newsocket;
 isc_socket_setname(httpd->sock, "httpd", ((void*)0));
 httpd->flags = 0;




 httpd->headerdata = isc_mem_get(httpdmgr->mctx, HTTP_SENDGROW);
 if (httpd->headerdata == ((void*)0)) {
  isc_mem_put(httpdmgr->mctx, httpd, sizeof(isc_httpd_t));
  isc_socket_detach(&nev->newsocket);
  goto requeue;
 }
 httpd->headerlen = HTTP_SENDGROW;
 isc_buffer_init(&httpd->headerbuffer, httpd->headerdata,
   httpd->headerlen);

 ISC_LIST_INIT(httpd->bufflist);

 isc_buffer_initnull(&httpd->bodybuffer);
 reset_client(httpd);

 r.base = (unsigned char *)httpd->recvbuf;
 r.length = HTTP_RECVLEN - 1;
 result = isc_socket_recv(httpd->sock, &r, 1, task, isc_httpd_recvdone,
     httpd);

 POST(result);
 NOTICE("accept queued recv on socket");

 requeue:
 result = isc_socket_accept(httpdmgr->sock, task, isc_httpd_accept,
       httpdmgr);
 if (result != ISC_R_SUCCESS) {

  NOTICE("accept could not reaccept due to failure");
 }

 out:
 UNLOCK(&httpdmgr->lock);

 httpdmgr_destroy(httpdmgr);

 isc_event_free(&ev);

 EXIT("accept");
}
