
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
struct evkeyvalq {int dummy; } ;
typedef int date ;


 int evhttp_add_header (struct evkeyvalq*,char*,char*) ;
 int * evhttp_find_header (struct evkeyvalq*,char*) ;
 struct tm* gmtime (int *) ;
 int gmtime_r (int *,struct tm*) ;
 scalar_t__ strftime (char*,int,char*,struct tm*) ;
 int time (int *) ;

__attribute__((used)) static void
evhttp_maybe_add_date_header(struct evkeyvalq *headers)
{
 if (evhttp_find_header(headers, "Date") == ((void*)0)) {
  char date[50];

  struct tm cur;

  struct tm *cur_p;
  time_t t = time(((void*)0));



  gmtime_r(&t, &cur);
  cur_p = &cur;

  if (strftime(date, sizeof(date),
   "%a, %d %b %Y %H:%M:%S GMT", cur_p) != 0) {
   evhttp_add_header(headers, "Date", date);
  }
 }
}
