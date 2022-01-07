
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* _ (char*) ;
 int exit (int) ;
 int fprintf (int *,char*,char*) ;
 char* progname ;

__attribute__((used)) static void
usage(FILE *stream, int status)
{
 fprintf(stream,
_("usage: %s [--version] [-v] [--help] [-c [loyear,]hiyear] zonename ...\n\nReport bugs to tz@elsie.nci.nih.gov.\n"), progname);


 exit(status);
}
