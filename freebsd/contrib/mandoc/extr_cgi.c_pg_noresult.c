
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct req {int dummy; } ;


 int FOCUS_QUERY ;
 int puts (char const*) ;
 int resp_begin_html (int,int *,int *) ;
 int resp_end_html () ;
 int resp_searchform (struct req const*,int ) ;

__attribute__((used)) static void
pg_noresult(const struct req *req, const char *msg)
{
 resp_begin_html(200, ((void*)0), ((void*)0));
 resp_searchform(req, FOCUS_QUERY);
 puts("<p>");
 puts(msg);
 puts("</p>");
 resp_end_html();
}
