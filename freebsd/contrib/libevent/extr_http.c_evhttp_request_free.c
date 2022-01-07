
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int flags; int * output_buffer; int * input_buffer; struct evhttp_request* output_headers; struct evhttp_request* input_headers; struct evhttp_request* host_cache; struct evhttp_request* response_code_line; int * uri_elems; struct evhttp_request* uri; struct evhttp_request* remote_host; } ;


 int EVHTTP_REQ_DEFER_FREE ;
 int EVHTTP_REQ_NEEDS_FREE ;
 int evbuffer_free (int *) ;
 int evhttp_clear_headers (struct evhttp_request*) ;
 int evhttp_uri_free (int *) ;
 int mm_free (struct evhttp_request*) ;

void
evhttp_request_free(struct evhttp_request *req)
{
 if ((req->flags & EVHTTP_REQ_DEFER_FREE) != 0) {
  req->flags |= EVHTTP_REQ_NEEDS_FREE;
  return;
 }

 if (req->remote_host != ((void*)0))
  mm_free(req->remote_host);
 if (req->uri != ((void*)0))
  mm_free(req->uri);
 if (req->uri_elems != ((void*)0))
  evhttp_uri_free(req->uri_elems);
 if (req->response_code_line != ((void*)0))
  mm_free(req->response_code_line);
 if (req->host_cache != ((void*)0))
  mm_free(req->host_cache);

 evhttp_clear_headers(req->input_headers);
 mm_free(req->input_headers);

 evhttp_clear_headers(req->output_headers);
 mm_free(req->output_headers);

 if (req->input_buffer != ((void*)0))
  evbuffer_free(req->input_buffer);

 if (req->output_buffer != ((void*)0))
  evbuffer_free(req->output_buffer);

 mm_free(req);
}
