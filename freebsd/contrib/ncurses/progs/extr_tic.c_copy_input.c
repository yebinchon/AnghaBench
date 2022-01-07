
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EXIT_FAILURE ;
 int ExitProgram (int ) ;
 int PATH_MAX ;
 char* _nc_progname ;
 int clearerr (int *) ;
 int failed (char const*) ;
 int fclose (int *) ;
 scalar_t__ feof (int *) ;
 scalar_t__ ferror (int *) ;
 int fgetc (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*,char const*) ;
 int fputc (int,int *) ;
 int * open_tempfile (char*) ;
 int stderr ;
 int strdup (char*) ;
 int to_remove ;

__attribute__((used)) static FILE *
copy_input(FILE *source, const char *filename, char *alt_file)
{
    char my_altfile[PATH_MAX];
    FILE *result = 0;
    FILE *target = 0;
    int ch;

    if (alt_file == 0)
 alt_file = my_altfile;

    if (source == 0) {
 failed("copy_input (source)");
    } else if ((target = open_tempfile(alt_file)) == 0) {
 failed("copy_input (target)");
    } else {
 clearerr(source);
 for (;;) {
     ch = fgetc(source);
     if (feof(source)) {
  break;
     } else if (ferror(source)) {
  failed(filename);
     } else if (ch == 0) {

  fprintf(stderr, "%s: %s is not a text-file\n", _nc_progname, filename);
  ExitProgram(EXIT_FAILURE);
     }
     fputc(ch, target);
 }
 fclose(source);






 result = fopen(alt_file, "r+");
 fclose(target);
 to_remove = strdup(alt_file);
    }
    return result;
}
