
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evkeyvalq {int dummy; } ;
struct evhttp_request {scalar_t__ headers_size; TYPE_1__* evcon; struct evkeyvalq* input_headers; } ;
struct evbuffer {int dummy; } ;
typedef enum message_read_status { ____Placeholder_message_read_status } message_read_status ;
struct TYPE_2__ {scalar_t__ max_headers_size; } ;


 int ALL_DATA_READ ;
 int DATA_CORRUPTED ;
 int DATA_TOO_LONG ;
 int EVBUFFER_EOL_CRLF ;
 int MORE_DATA_EXPECTED ;
 scalar_t__ evbuffer_get_length (struct evbuffer*) ;
 char* evbuffer_readln (struct evbuffer*,size_t*,int ) ;
 int evhttp_add_header (struct evkeyvalq*,char*,char*) ;
 int evhttp_append_to_last_header (struct evkeyvalq*,char*) ;
 int evutil_rtrim_lws_ (char*) ;
 int mm_free (char*) ;
 char* strsep (char**,char*) ;
 int strspn (char*,char*) ;

enum message_read_status
evhttp_parse_headers_(struct evhttp_request *req, struct evbuffer* buffer)
{
 enum message_read_status errcode = DATA_CORRUPTED;
 char *line;
 enum message_read_status status = MORE_DATA_EXPECTED;

 struct evkeyvalq* headers = req->input_headers;
 size_t line_length;
 while ((line = evbuffer_readln(buffer, &line_length, EVBUFFER_EOL_CRLF))
        != ((void*)0)) {
  char *skey, *svalue;

  req->headers_size += line_length;

  if (req->evcon != ((void*)0) &&
      req->headers_size > req->evcon->max_headers_size) {
   errcode = DATA_TOO_LONG;
   goto error;
  }

  if (*line == '\0') {
   status = ALL_DATA_READ;
   mm_free(line);
   break;
  }


  if (*line == ' ' || *line == '\t') {
   if (evhttp_append_to_last_header(headers, line) == -1)
    goto error;
   mm_free(line);
   continue;
  }


  svalue = line;
  skey = strsep(&svalue, ":");
  if (svalue == ((void*)0))
   goto error;

  svalue += strspn(svalue, " ");
  evutil_rtrim_lws_(svalue);

  if (evhttp_add_header(headers, skey, svalue) == -1)
   goto error;

  mm_free(line);
 }

 if (status == MORE_DATA_EXPECTED) {
  if (req->evcon != ((void*)0) &&
  req->headers_size + evbuffer_get_length(buffer) > req->evcon->max_headers_size)
   return (DATA_TOO_LONG);
 }

 return (status);

 error:
 mm_free(line);
 return (errcode);
}
