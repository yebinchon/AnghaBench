
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int ExitProgram (int ) ;
 size_t SIZEOF (char const* const*) ;
 char* _nc_progname ;
 int fprintf (int ,char*,char*,char*) ;
 int fputs (char const* const,int ) ;
 int putc (char,int ) ;
 int stderr ;
 char* usage_string ;

__attribute__((used)) static void
usage(void)
{
    static const char *const tbl[] =
    {
 "Options:",
 "  -1         format translation output one capability per line",



 "  -K         translate entries to termcap source form with BSD syntax",
 "  -C         translate entries to termcap source form",
 "  -D         print list of tic's database locations (first must be writable)",
 "  -c         check only, validate input without compiling or translating",
 "  -e<names>  translate/compile only entries named by comma-separated list",
 "  -f         format complex strings for readability",
 "  -G         format %{number} to %'char'",
 "  -g         format %'char' to %{number}",
 "  -I         translate entries to terminfo source form",
 "  -L         translate entries to full terminfo source form",
 "  -N         disable smart defaults for source translation",
 "  -o<dir>    set output directory for compiled entry writes",
 "  -R<name>   restrict translation to given terminfo/termcap version",
 "  -r         force resolution of all use entries in source translation",
 "  -s         print summary statistics",
 "  -T         remove size-restrictions on compiled description",



 "  -U         suppress post-processing of entries",
 "  -V         print version",
 "  -v[n]      set verbosity level",
 "  -w[n]      set format width for translation output",



 "",
 "Parameters:",
 "  <file>     file to translate or compile"
    };
    size_t j;

    fprintf(stderr, "Usage: %s %s\n", _nc_progname, usage_string);
    for (j = 0; j < SIZEOF(tbl); j++) {
 fputs(tbl[j], stderr);
 putc('\n', stderr);
    }
    ExitProgram(EXIT_FAILURE);
}
