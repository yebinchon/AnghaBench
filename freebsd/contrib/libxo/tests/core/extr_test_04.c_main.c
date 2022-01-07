
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int info ;
 int info_count ;
 int xo_close_container (char*) ;
 int xo_close_instance (char*) ;
 int xo_close_list (char*) ;
 int xo_emit (char*,...) ;
 int xo_finish () ;
 int xo_open_container (char*) ;
 int xo_open_instance (char*) ;
 int xo_open_list (char*) ;
 int xo_parse_args (int,char**) ;
 int xo_set_info (int *,int ,int ) ;

int
main (int argc, char **argv)
{
    struct employee {
 const char *e_first;
 const char *e_last;
 unsigned e_dept;
    } employees[] = {
 { "Terry", "Jones", 660 },
 { "Leslie", "Patterson", 341 },
 { "Ashley", "Smith", 1440 },
 { ((void*)0), ((void*)0) }
    }, *ep = employees;

    argc = xo_parse_args(argc, argv);
    if (argc < 0)
 return 1;

    xo_set_info(((void*)0), info, info_count);

    xo_open_container("employees");
    xo_open_list("employee");

    xo_emit("{T:Last Name/%-12s}{T:First Name/%-14s}{T:Department/%s}\n");
    for ( ; ep->e_first; ep++) {
 xo_open_instance("employee");
 xo_emit("{:first-name/%-12s/%s}{:last-name/%-14s/%s}"
  "{:department/%8u/%u}\n",
  ep->e_first, ep->e_last, ep->e_dept);
 xo_close_instance("employee");
    }

    xo_close_list("employee");
    xo_close_container("employees");

    xo_finish();

    return 0;
}
