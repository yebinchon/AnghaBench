
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int isc_task_t ;
struct TYPE_13__ {scalar_t__ result; int bufferlist; } ;
typedef TYPE_1__ isc_socketevent_t ;
struct TYPE_14__ {unsigned char* base; scalar_t__ length; } ;
typedef TYPE_2__ isc_region_t ;
struct TYPE_15__ {int flags; int sock; scalar_t__ recvbuf; int bodybuffer; int freecb_arg; int (* freecb ) (int *,int ) ;int headerbuffer; } ;
typedef TYPE_3__ isc_httpd_t ;
struct TYPE_16__ {TYPE_3__* ev_arg; } ;
typedef TYPE_4__ isc_event_t ;
typedef int isc_buffer_t ;


 int ENTER (char*) ;
 int EXIT (char*) ;
 int HTTPD_CLOSE ;
 scalar_t__ HTTP_RECVLEN ;
 int INSIST (int ) ;
 int ISC_HTTPD_ISSEND (TYPE_3__*) ;
 int ISC_HTTPD_SETRECV (TYPE_3__*) ;
 scalar_t__ ISC_LINK_LINKED (int *,int ) ;
 int ISC_LIST_UNLINK (int ,int *,int ) ;
 scalar_t__ ISC_R_SUCCESS ;
 int NOTICE (char*) ;
 int destroy_client (TYPE_3__**) ;
 scalar_t__ isc_buffer_length (int *) ;
 int isc_event_free (TYPE_4__**) ;
 int isc_httpd_recvdone ;
 int isc_socket_recv (int ,TYPE_2__*,int,int *,int ,TYPE_3__*) ;
 int link ;
 int reset_client (TYPE_3__*) ;
 int stub1 (int *,int ) ;

__attribute__((used)) static void
isc_httpd_senddone(isc_task_t *task, isc_event_t *ev)
{
 isc_httpd_t *httpd = ev->ev_arg;
 isc_region_t r;
 isc_socketevent_t *sev = (isc_socketevent_t *)ev;

 ENTER("senddone");
 INSIST(ISC_HTTPD_ISSEND(httpd));






 NOTICE("senddone unlinked header");
 ISC_LIST_UNLINK(sev->bufferlist, &httpd->headerbuffer, link);
 if (httpd->freecb != ((void*)0)) {
  isc_buffer_t *b = ((void*)0);
  if (isc_buffer_length(&httpd->bodybuffer) > 0)
   b = &httpd->bodybuffer;
  httpd->freecb(b, httpd->freecb_arg);
  NOTICE("senddone free callback performed");
 }
 if (ISC_LINK_LINKED(&httpd->bodybuffer, link)) {
  ISC_LIST_UNLINK(sev->bufferlist, &httpd->bodybuffer, link);
  NOTICE("senddone body buffer unlinked");
 }

 if (sev->result != ISC_R_SUCCESS) {
  destroy_client(&httpd);
  goto out;
 }

 if ((httpd->flags & HTTPD_CLOSE) != 0) {
  destroy_client(&httpd);
  goto out;
 }

 ISC_HTTPD_SETRECV(httpd);

 NOTICE("senddone restarting recv on socket");

 reset_client(httpd);

 r.base = (unsigned char *)httpd->recvbuf;
 r.length = HTTP_RECVLEN - 1;

 (void)isc_socket_recv(httpd->sock, &r, 1, task,
         isc_httpd_recvdone, httpd);

out:
 isc_event_free(&ev);
 EXIT("senddone");
}
