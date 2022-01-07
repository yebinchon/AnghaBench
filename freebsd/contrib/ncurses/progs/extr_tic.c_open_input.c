
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int FILE ;


 int EXIT_FAILURE ;
 int ExitProgram (int ) ;
 char const* STDIN_NAME ;
 int S_IFCHR ;
 int S_IFDIR ;
 int S_IFMT ;
 int S_IFREG ;
 char* _nc_progname ;
 int * copy_input (int *,char const*,char*) ;
 int errno ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char*,char const*,...) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int stderr ;
 int * stdin ;
 int strcmp (char const*,char*) ;
 char* strerror (int ) ;

__attribute__((used)) static FILE *
open_input(const char *filename, char *alt_file)
{
    FILE *fp;
    struct stat sb;
    int mode;

    if (!strcmp(filename, "-")) {
 fp = copy_input(stdin, STDIN_NAME, alt_file);
    } else if (stat(filename, &sb) < 0) {
 fprintf(stderr, "%s: %s %s\n", _nc_progname, filename, strerror(errno));
 ExitProgram(EXIT_FAILURE);
    } else if ((mode = (sb.st_mode & S_IFMT)) == S_IFDIR
        || (mode != S_IFREG && mode != S_IFCHR)) {
 fprintf(stderr, "%s: %s is not a file\n", _nc_progname, filename);
 ExitProgram(EXIT_FAILURE);
    } else {
 fp = fopen(filename, "r");

 if (fp == 0) {
     fprintf(stderr, "%s: Can't open %s\n", _nc_progname, filename);
     ExitProgram(EXIT_FAILURE);
 }
 if (mode != S_IFREG) {
     if (alt_file != 0) {
  FILE *fp2 = copy_input(fp, filename, alt_file);
  fp = fp2;
     } else {
  fprintf(stderr, "%s: %s is not a file\n", _nc_progname, filename);
  ExitProgram(EXIT_FAILURE);
     }
 }
    }
    return fp;
}
