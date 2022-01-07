
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;
 int puts (char const*) ;
 int resp_begin_html (int,char*,int *) ;
 int resp_end_html () ;
 char* scriptname ;

__attribute__((used)) static void
pg_error_badrequest(const char *msg)
{

 resp_begin_html(400, "Bad Request", ((void*)0));
 puts("<h1>Bad Request</h1>\n"
      "<p>\n");
 puts(msg);
 printf("Try again from the\n"
        "<a href=\"/%s\">main page</a>.\n"
        "</p>", scriptname);
 resp_end_html();
}
