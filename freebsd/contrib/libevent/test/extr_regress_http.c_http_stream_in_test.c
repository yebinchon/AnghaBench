
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* BASIC_REQUEST_BODY ;
 int http_stream_in_test_ (void*,char*,int,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
http_stream_in_test(void *arg)
{
 http_stream_in_test_(arg, "/chunked", 13 + 18 + 8,
     "This is funnybut not hilarious.bwv 1052");

 http_stream_in_test_(arg, "/test", strlen(BASIC_REQUEST_BODY),
     BASIC_REQUEST_BODY);
}
