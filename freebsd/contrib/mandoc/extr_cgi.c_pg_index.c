
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct req {int dummy; } ;


 int FOCUS_QUERY ;
 int printf (char*,char*,char*,char*,char*) ;
 int resp_begin_html (int,int *,int *) ;
 int resp_end_html () ;
 int resp_searchform (struct req const*,int ) ;
 char* scriptname ;

__attribute__((used)) static void
pg_index(const struct req *req)
{

 resp_begin_html(200, ((void*)0), ((void*)0));
 resp_searchform(req, FOCUS_QUERY);
 printf("<p>\n"
        "This web interface is documented in the\n"
        "<a class=\"Xr\" href=\"/%s%sman.cgi.8\">man.cgi(8)</a>\n"
        "manual, and the\n"
        "<a class=\"Xr\" href=\"/%s%sapropos.1\">apropos(1)</a>\n"
        "manual explains the query syntax.\n"
        "</p>\n",
        scriptname, *scriptname == '\0' ? "" : "/",
        scriptname, *scriptname == '\0' ? "" : "/");
 resp_end_html();
}
