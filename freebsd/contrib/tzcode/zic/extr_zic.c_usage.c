
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* _ (char*) ;
 int exit (int) ;
 int fprintf (int *,char*) ;

__attribute__((used)) static void
usage(FILE *stream, int status)
  {
 (void) fprintf(stream, _("usage is zic [ --version ] [--help] [ -v ] [ -l localtime ] [ -p posixrules ] \\\n\t[ -d directory ] [ -L leapseconds ] [ -y yearistype ] [ filename ... ]\n\nReport bugs to tz@elsie.nci.nih.gov.\n"));




 exit(status);
}
