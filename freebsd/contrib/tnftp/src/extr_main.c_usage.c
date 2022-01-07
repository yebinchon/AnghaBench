
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*,char const*) ;
 char* getprogname () ;
 int stderr ;

void
usage(void)
{
 const char *progname = getprogname();

 (void)fprintf(stderr,
"usage: %s [-46AadefginpRtVv] [-N netrc] [-o outfile] [-P port] [-q quittime]\n"
"           [-r retry] [-s srcaddr] [-T dir,max[,inc]]\n"
"           [[user@]host [port]] [host:path[/]] [file:///file]\n"
"           [ftp://[user[:pass]@]host[:port]/path[/]]\n"
"           [http://[user[:pass]@]host[:port]/path] [...]\n"
"       %s -u URL file [...]\n", progname, progname);
 exit(1);
}
