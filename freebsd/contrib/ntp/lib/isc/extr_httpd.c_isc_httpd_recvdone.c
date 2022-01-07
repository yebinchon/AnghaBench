
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int isc_time_t ;
typedef int isc_task_t ;
struct TYPE_25__ {scalar_t__ result; int n; } ;
typedef TYPE_2__ isc_socketevent_t ;
typedef scalar_t__ isc_result_t ;
struct TYPE_26__ {unsigned char* base; int length; } ;
typedef TYPE_3__ isc_region_t ;
struct TYPE_27__ {scalar_t__ (* action ) (int ,int ,int ,int *,int *,char**,int *,int *,int *) ;int action_arg; int url; } ;
typedef TYPE_4__ isc_httpdurl_t ;
struct TYPE_28__ {int recvlen; char* mimetype; int bufflist; int sock; int bodybuffer; int headerbuffer; int freecb_arg; int freecb; int retmsg; int retcode; int querystring; int url; TYPE_1__* mgr; scalar_t__ recvbuf; } ;
typedef TYPE_5__ isc_httpd_t ;
struct TYPE_29__ {TYPE_5__* ev_arg; } ;
typedef TYPE_6__ isc_event_t ;
typedef int datebuf ;
struct TYPE_24__ {scalar_t__ (* render_404 ) (int ,int ,int *,int *,int *,char**,int *,int *,int *) ;scalar_t__ (* render_500 ) (int ,int ,int *,int *,int *,char**,int *,int *,int *) ;int urls; } ;


 int ENTER (char*) ;
 int EXIT (char*) ;
 int HTTP_RECVLEN ;
 int INSIST (int ) ;
 int ISC_HTTPD_ISRECV (TYPE_5__*) ;
 int ISC_HTTPD_SETSEND (TYPE_5__*) ;
 int ISC_LIST_APPEND (int ,int *,int ) ;
 TYPE_4__* ISC_LIST_HEAD (int ) ;
 TYPE_4__* ISC_LIST_NEXT (TYPE_4__*,int ) ;
 scalar_t__ ISC_R_NOTFOUND ;
 scalar_t__ ISC_R_SUCCESS ;
 int NOTICE (char*) ;
 int RUNTIME_CHECK (int) ;
 int destroy_client (TYPE_5__**) ;
 int isc_buffer_initnull (int *) ;
 scalar_t__ isc_buffer_length (int *) ;
 int isc_buffer_usedlength (int *) ;
 int isc_event_free (TYPE_6__**) ;
 int isc_httpd_addheader (TYPE_5__*,char*,char*) ;
 int isc_httpd_addheaderuint (TYPE_5__*,char*,int ) ;
 int isc_httpd_endheaders (TYPE_5__*) ;
 int isc_httpd_response (TYPE_5__*) ;
 int isc_httpd_senddone ;
 int isc_socket_recv (int ,TYPE_3__*,int,int *,void (*) (int *,TYPE_6__*),TYPE_5__*) ;
 int isc_socket_sendv (int ,int *,int *,int ,TYPE_5__*) ;
 int isc_time_formathttptimestamp (int *,char*,int) ;
 int isc_time_now (int *) ;
 int link ;
 scalar_t__ process_request (TYPE_5__*,int ) ;
 scalar_t__ strcmp (int ,int ) ;
 scalar_t__ stub1 (int ,int ,int *,int *,int *,char**,int *,int *,int *) ;
 scalar_t__ stub2 (int ,int ,int ,int *,int *,char**,int *,int *,int *) ;
 scalar_t__ stub3 (int ,int ,int *,int *,int *,char**,int *,int *,int *) ;

__attribute__((used)) static void
isc_httpd_recvdone(isc_task_t *task, isc_event_t *ev)
{
 isc_region_t r;
 isc_result_t result;
 isc_httpd_t *httpd = ev->ev_arg;
 isc_socketevent_t *sev = (isc_socketevent_t *)ev;
 isc_httpdurl_t *url;
 isc_time_t now;
 char datebuf[32];

 ENTER("recv");

 INSIST(ISC_HTTPD_ISRECV(httpd));

 if (sev->result != ISC_R_SUCCESS) {
  NOTICE("recv destroying client");
  destroy_client(&httpd);
  goto out;
 }

 result = process_request(httpd, sev->n);
 if (result == ISC_R_NOTFOUND) {
  if (httpd->recvlen >= HTTP_RECVLEN - 1) {
   destroy_client(&httpd);
   goto out;
  }
  r.base = (unsigned char *)httpd->recvbuf + httpd->recvlen;
  r.length = HTTP_RECVLEN - httpd->recvlen - 1;

  (void)isc_socket_recv(httpd->sock, &r, 1, task,
          isc_httpd_recvdone, httpd);
  goto out;
 } else if (result != ISC_R_SUCCESS) {
  destroy_client(&httpd);
  goto out;
 }

 ISC_HTTPD_SETSEND(httpd);





 isc_buffer_initnull(&httpd->bodybuffer);
 isc_time_now(&now);
 isc_time_formathttptimestamp(&now, datebuf, sizeof(datebuf));
 url = ISC_LIST_HEAD(httpd->mgr->urls);
 while (url != ((void*)0)) {
  if (strcmp(httpd->url, url->url) == 0)
   break;
  url = ISC_LIST_NEXT(url, link);
 }
 if (url == ((void*)0))
  result = httpd->mgr->render_404(httpd->url, httpd->querystring,
      ((void*)0),
      &httpd->retcode,
      &httpd->retmsg,
      &httpd->mimetype,
      &httpd->bodybuffer,
      &httpd->freecb,
      &httpd->freecb_arg);
 else
  result = url->action(httpd->url, httpd->querystring,
         url->action_arg,
         &httpd->retcode, &httpd->retmsg,
         &httpd->mimetype, &httpd->bodybuffer,
         &httpd->freecb, &httpd->freecb_arg);
 if (result != ISC_R_SUCCESS) {
  result = httpd->mgr->render_500(httpd->url, httpd->querystring,
      ((void*)0), &httpd->retcode,
      &httpd->retmsg,
      &httpd->mimetype,
      &httpd->bodybuffer,
      &httpd->freecb,
      &httpd->freecb_arg);
  RUNTIME_CHECK(result == ISC_R_SUCCESS);
 }

 isc_httpd_response(httpd);
 isc_httpd_addheader(httpd, "Content-Type", httpd->mimetype);
 isc_httpd_addheader(httpd, "Date", datebuf);
 isc_httpd_addheader(httpd, "Expires", datebuf);
 isc_httpd_addheader(httpd, "Last-Modified", datebuf);
 isc_httpd_addheader(httpd, "Pragma: no-cache", ((void*)0));
 isc_httpd_addheader(httpd, "Cache-Control: no-cache", ((void*)0));
 isc_httpd_addheader(httpd, "Server: libisc", ((void*)0));
 isc_httpd_addheaderuint(httpd, "Content-Length",
    isc_buffer_usedlength(&httpd->bodybuffer));
 isc_httpd_endheaders(httpd);

 ISC_LIST_APPEND(httpd->bufflist, &httpd->headerbuffer, link);





 if (isc_buffer_length(&httpd->bodybuffer) > 0)
  ISC_LIST_APPEND(httpd->bufflist, &httpd->bodybuffer, link);


 (void)isc_socket_sendv(httpd->sock, &httpd->bufflist, task,
          isc_httpd_senddone, httpd);

 out:
 isc_event_free(&ev);
 EXIT("recv");
}
