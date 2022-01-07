
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {struct request* current_req; struct request* handle; int pending_cb; struct request* const request; int request_appended; TYPE_1__* ns; struct evdns_base* base; int timeout_event; } ;
struct evdns_base {scalar_t__ disable_when_inactive; int global_requests_waiting; int global_requests_inflight; struct request* req_waiting_head; } ;
struct TYPE_2__ {scalar_t__ requests_inflight; int timeout_event; int event; } ;


 int ASSERT_VALID_REQUEST (struct request* const) ;
 int EVDNS_LOCK (struct evdns_base*) ;
 int EVDNS_LOG_DEBUG ;
 int EVDNS_UNLOCK (struct evdns_base*) ;
 int EVUTIL_ASSERT (int) ;
 int evdns_request_remove (struct request* const,struct request**) ;
 int evdns_requests_pump_waiting_queue (struct evdns_base*) ;
 int event_debug_unassign (int *) ;
 int event_del (int *) ;
 int evtimer_del (int *) ;
 int log (int ,char*,struct request* const) ;
 int mm_free (struct request* const) ;
 int search_request_finished (struct request*) ;

__attribute__((used)) static void
request_finished(struct request *const req, struct request **head, int free_handle) {
 struct evdns_base *base = req->base;
 int was_inflight = (head != &base->req_waiting_head);
 EVDNS_LOCK(base);
 ASSERT_VALID_REQUEST(req);

 if (head)
  evdns_request_remove(req, head);

 log(EVDNS_LOG_DEBUG, "Removing timeout for request %p", req);
 if (was_inflight) {
  evtimer_del(&req->timeout_event);
  base->global_requests_inflight--;
  req->ns->requests_inflight--;
 } else {
  base->global_requests_waiting--;
 }

 event_debug_unassign(&req->timeout_event);

 if (req->ns &&
     req->ns->requests_inflight == 0 &&
     req->base->disable_when_inactive) {
  event_del(&req->ns->event);
  evtimer_del(&req->ns->timeout_event);
 }

 if (!req->request_appended) {

  mm_free(req->request);
 } else {


 }

 if (req->handle) {
  EVUTIL_ASSERT(req->handle->current_req == req);

  if (free_handle) {
   search_request_finished(req->handle);
   req->handle->current_req = ((void*)0);
   if (! req->handle->pending_cb) {


    mm_free(req->handle);
   }
   req->handle = ((void*)0);

  } else {
   req->handle->current_req = ((void*)0);
  }
 }

 mm_free(req);

 evdns_requests_pump_waiting_queue(base);
 EVDNS_UNLOCK(base);
}
