
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int ExitProgram (int ) ;
 char* _nc_home_terminfo () ;
 char* _nc_progname ;
 char* _nc_tic_dir (int ) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*,char const*) ;
 int free (char*) ;
 scalar_t__ getenv (char*) ;
 int printf (char*,char*) ;
 int stderr ;
 int stdout ;
 char* valid_db_path (char const*) ;

__attribute__((used)) static void
show_databases(const char *outdir)
{
    bool specific = (outdir != 0) || getenv("TERMINFO") != 0;
    char *result;
    const char *tried = 0;

    if (outdir == 0) {
 outdir = _nc_tic_dir(0);
    }
    if ((result = valid_db_path(outdir)) != 0) {
 printf("%s\n", result);
 free(result);
    } else {
 tried = outdir;
    }

    if ((outdir = _nc_home_terminfo())) {
 if ((result = valid_db_path(outdir)) != 0) {
     printf("%s\n", result);
     free(result);
 } else if (!specific) {
     tried = outdir;
 }
    }




    if (tried) {
 fflush(stdout);
 fprintf(stderr, "%s: %s (no permission)\n", _nc_progname, tried);
 ExitProgram(EXIT_FAILURE);
    }
}
