
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evhttp_request {scalar_t__ ntoread; scalar_t__ body_size; int flags; struct evbuffer* input_buffer; int cb_arg; int (* chunk_cb ) (struct evhttp_request*,int ) ;TYPE_1__* evcon; } ;
struct evbuffer {int dummy; } ;
typedef scalar_t__ ev_uint64_t ;
typedef scalar_t__ ev_int64_t ;
typedef enum message_read_status { ____Placeholder_message_read_status } message_read_status ;
struct TYPE_2__ {scalar_t__ max_body_size; } ;


 int ALL_DATA_READ ;
 int DATA_CORRUPTED ;
 int DATA_TOO_LONG ;
 int EVBUFFER_EOL_CRLF ;
 int EVHTTP_REQ_DEFER_FREE ;
 int EVHTTP_REQ_NEEDS_FREE ;
 scalar_t__ EV_SIZE_MAX ;
 size_t EV_SSIZE_MAX ;
 int MORE_DATA_EXPECTED ;
 int REQUEST_CANCELED ;
 int evbuffer_drain (struct evbuffer*,size_t) ;
 size_t evbuffer_get_length (struct evbuffer*) ;
 char* evbuffer_readln (struct evbuffer*,int *,int ) ;
 int evbuffer_remove_buffer (struct evbuffer*,struct evbuffer*,size_t) ;
 int event_debug (char*) ;
 scalar_t__ evutil_strtoll (char*,char**,int) ;
 int mm_free (char*) ;
 scalar_t__ strlen (char*) ;
 int stub1 (struct evhttp_request*,int ) ;

__attribute__((used)) static enum message_read_status
evhttp_handle_chunked_read(struct evhttp_request *req, struct evbuffer *buf)
{
 if (req == ((void*)0) || buf == ((void*)0)) {
     return DATA_CORRUPTED;
 }

 while (1) {
  size_t buflen;

  if ((buflen = evbuffer_get_length(buf)) == 0) {
   break;
  }



  if (buflen > EV_SSIZE_MAX) {
   return DATA_CORRUPTED;
  }

  if (req->ntoread < 0) {

   ev_int64_t ntoread;
   char *p = evbuffer_readln(buf, ((void*)0), EVBUFFER_EOL_CRLF);
   char *endp;
   int error;
   if (p == ((void*)0))
    break;

   if (strlen(p) == 0) {
    mm_free(p);
    continue;
   }
   ntoread = evutil_strtoll(p, &endp, 16);
   error = (*p == '\0' ||
       (*endp != '\0' && *endp != ' ') ||
       ntoread < 0);
   mm_free(p);
   if (error) {

    return (DATA_CORRUPTED);
   }


   if ((ev_uint64_t)ntoread > EV_SIZE_MAX - req->body_size) {
       return DATA_CORRUPTED;
   }

   if (req->body_size + (size_t)ntoread > req->evcon->max_body_size) {

    event_debug(("Request body is too long"));
    return (DATA_TOO_LONG);
   }

   req->body_size += (size_t)ntoread;
   req->ntoread = ntoread;
   if (req->ntoread == 0) {

    return (ALL_DATA_READ);
   }
   continue;
  }



  if (req->ntoread > EV_SSIZE_MAX) {
   return DATA_CORRUPTED;
  }


  if (req->ntoread > 0 && buflen < (ev_uint64_t)req->ntoread)
   return (MORE_DATA_EXPECTED);


  evbuffer_remove_buffer(buf, req->input_buffer, (size_t)req->ntoread);
  req->ntoread = -1;
  if (req->chunk_cb != ((void*)0)) {
   req->flags |= EVHTTP_REQ_DEFER_FREE;
   (*req->chunk_cb)(req, req->cb_arg);
   evbuffer_drain(req->input_buffer,
       evbuffer_get_length(req->input_buffer));
   req->flags &= ~EVHTTP_REQ_DEFER_FREE;
   if ((req->flags & EVHTTP_REQ_NEEDS_FREE) != 0) {
    return (REQUEST_CANCELED);
   }
  }
 }

 return (MORE_DATA_EXPECTED);
}
