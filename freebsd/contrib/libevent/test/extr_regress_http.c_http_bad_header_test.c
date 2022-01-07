
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evkeyvalq {int dummy; } ;


 int TAILQ_INIT (struct evkeyvalq*) ;
 int evhttp_add_header (struct evkeyvalq*,char*,char*) ;
 int evhttp_clear_headers (struct evkeyvalq*) ;
 int tt_want (int) ;

__attribute__((used)) static void
http_bad_header_test(void *ptr)
{
 struct evkeyvalq headers;

 TAILQ_INIT(&headers);

 tt_want(evhttp_add_header(&headers, "One", "Two") == 0);
 tt_want(evhttp_add_header(&headers, "One", "Two\r\n Three") == 0);
 tt_want(evhttp_add_header(&headers, "One\r", "Two") == -1);
 tt_want(evhttp_add_header(&headers, "One\n", "Two") == -1);
 tt_want(evhttp_add_header(&headers, "One", "Two\r") == -1);
 tt_want(evhttp_add_header(&headers, "One", "Two\n") == -1);

 evhttp_clear_headers(&headers);
}
