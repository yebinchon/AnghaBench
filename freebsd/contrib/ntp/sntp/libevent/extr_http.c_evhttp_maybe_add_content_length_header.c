
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evkeyvalq {int dummy; } ;
typedef int len ;


 int EV_SIZE_ARG (size_t) ;
 int EV_SIZE_FMT ;
 int evhttp_add_header (struct evkeyvalq*,char*,char*) ;
 int * evhttp_find_header (struct evkeyvalq*,char*) ;
 int evutil_snprintf (char*,int,int ,int ) ;

__attribute__((used)) static void
evhttp_maybe_add_content_length_header(struct evkeyvalq *headers,
    size_t content_length)
{
 if (evhttp_find_header(headers, "Transfer-Encoding") == ((void*)0) &&
     evhttp_find_header(headers, "Content-Length") == ((void*)0)) {
  char len[22];
  evutil_snprintf(len, sizeof(len), EV_SIZE_FMT,
      EV_SIZE_ARG(content_length));
  evhttp_add_header(headers, "Content-Length", len);
 }
}
