
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* l_code; char* l_name; char** l_options; } ;


 char* DEFAULT_DEVICE ;
 int EX_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 TYPE_1__* lcd_drivertab ;
 char* progname ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
    int i, j;

    fprintf(stderr, "usage: %s [-v] [-d drivername] [-f device] [-o options] [args...]\n", progname);
    fprintf(stderr, "   -D      Increase debugging\n");
    fprintf(stderr, "   -f      Specify device, default is '%s'\n", DEFAULT_DEVICE);
    fprintf(stderr, "   -d      Specify driver, one of:\n");
    for (i = 0; lcd_drivertab[i].l_code != ((void*)0); i++) {
 fprintf(stderr, "              %-10s (%s)%s\n",
  lcd_drivertab[i].l_code, lcd_drivertab[i].l_name, (i == 0) ? " *default*" : "");
 if (lcd_drivertab[i].l_options[0] != ((void*)0)) {

     for (j = 0; lcd_drivertab[i].l_options[j] != ((void*)0); j++)
  fprintf(stderr, "                  %s\n", lcd_drivertab[i].l_options[j]);
 }
    }
    fprintf(stderr, "  -o       Specify driver option string\n");
    fprintf(stderr, "  args     Message strings.  Embedded escapes supported:\n");
    fprintf(stderr, "                  \\b	Backspace\n");
    fprintf(stderr, "                  \\f	Clear display, home cursor\n");
    fprintf(stderr, "                  \\n	Newline\n");
    fprintf(stderr, "                  \\r	Carriage return\n");
    fprintf(stderr, "                  \\R	Reset display\n");
    fprintf(stderr, "                  \\v	Home cursor\n");
    fprintf(stderr, "                  \\\\	Literal \\\n");
    fprintf(stderr, "           If args not supplied, strings are read from standard input\n");
    exit(EX_USAGE);
}
