
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
print_help (void)
{
    fprintf(stderr,
"Usage: xopo [options] format [fields]\n"
"    --help                Display this help text\n"
"    --option <opts> -or -O <opts> Give formatting options\n"
"    --output <file> -or -o <file> Use file as output destination\n"
"    --po <file> or -f <file> Generate new msgid's for a po file\n"
"    --simplify <text> OR -s <text> Show simplified form of the format string\n"
"    --version             Display version information\n"
"    --warn OR -W          Display warnings in text on stderr\n"
);
}
