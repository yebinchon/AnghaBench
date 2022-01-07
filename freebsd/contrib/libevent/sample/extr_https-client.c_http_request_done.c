
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
struct bufferevent {int dummy; } ;
typedef int buffer ;


 int ERR_error_string_n (unsigned long,char*,int) ;
 int EVUTIL_SOCKET_ERROR () ;
 unsigned long bufferevent_get_openssl_error (struct bufferevent*) ;
 int evbuffer_remove (int ,char*,int) ;
 int evhttp_request_get_input_buffer (struct evhttp_request*) ;
 int evhttp_request_get_response_code (struct evhttp_request*) ;
 char* evhttp_request_get_response_code_line (struct evhttp_request*) ;
 char* evutil_socket_error_to_string (int) ;
 int fprintf (int ,char*,...) ;
 int fwrite (char*,int,int,int ) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static void
http_request_done(struct evhttp_request *req, void *ctx)
{
 char buffer[256];
 int nread;

 if (req == ((void*)0)) {



  struct bufferevent *bev = (struct bufferevent *) ctx;
  unsigned long oslerr;
  int printed_err = 0;
  int errcode = EVUTIL_SOCKET_ERROR();
  fprintf(stderr, "some request failed - no idea which one though!\n");


  while ((oslerr = bufferevent_get_openssl_error(bev))) {
   ERR_error_string_n(oslerr, buffer, sizeof(buffer));
   fprintf(stderr, "%s\n", buffer);
   printed_err = 1;
  }


  if (! printed_err)
   fprintf(stderr, "socket error = %s (%d)\n",
    evutil_socket_error_to_string(errcode),
    errcode);
  return;
 }

 fprintf(stderr, "Response line: %d %s\n",
     evhttp_request_get_response_code(req),
     evhttp_request_get_response_code_line(req));

 while ((nread = evbuffer_remove(evhttp_request_get_input_buffer(req),
      buffer, sizeof(buffer)))
        > 0) {


  fwrite(buffer, nread, 1, stdout);
 }
}
