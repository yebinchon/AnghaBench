
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int puts (char*) ;
 int resp_begin_html (int,char*,int *) ;
 int resp_end_html () ;

__attribute__((used)) static void
pg_error_internal(void)
{
 resp_begin_html(500, "Internal Server Error", ((void*)0));
 puts("<p>Internal Server Error</p>");
 resp_end_html();
}
