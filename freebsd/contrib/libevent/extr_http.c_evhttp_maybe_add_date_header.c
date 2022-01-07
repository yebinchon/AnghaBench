
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evkeyvalq {int dummy; } ;
typedef int date ;


 int evhttp_add_header (struct evkeyvalq*,char*,char*) ;
 int * evhttp_find_header (struct evkeyvalq*,char*) ;
 int evutil_date_rfc1123 (char*,int,int *) ;

__attribute__((used)) static void
evhttp_maybe_add_date_header(struct evkeyvalq *headers)
{
 if (evhttp_find_header(headers, "Date") == ((void*)0)) {
  char date[50];
  if (sizeof(date) - evutil_date_rfc1123(date, sizeof(date), ((void*)0)) > 0) {
   evhttp_add_header(headers, "Date", date);
  }
 }
}
