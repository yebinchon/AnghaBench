
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tbl ;


 char* _nc_progname ;
 int exit_error () ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
    static const char *tbl[] =
    {
 ""
 ,"Options:"
 ,"  -c          set control characters"
 ,"  -e ch       erase character"
 ,"  -I          no initialization strings"
 ,"  -i ch       interrupt character"
 ,"  -k ch       kill character"
 ,"  -m mapping  map identifier to type"
 ,"  -Q          do not output control key settings"
 ,"  -r          display term on stderr"
 ,"  -s          output TERM set command"
 ,"  -V          print curses-version"
 ,"  -w          set window-size"
    };
    unsigned n;
    (void) fprintf(stderr, "Usage: %s [options] [terminal]\n", _nc_progname);
    for (n = 0; n < sizeof(tbl) / sizeof(tbl[0]); ++n)
 fprintf(stderr, "%s\n", tbl[n]);
    exit_error();

}
