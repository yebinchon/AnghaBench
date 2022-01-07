
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum argmode { ____Placeholder_argmode } argmode ;






 scalar_t__ MANDOCLEVEL_BADARG ;
 int exit (int) ;
 int fputs (char*,int ) ;
 int stderr ;

__attribute__((used)) static void
usage(enum argmode argmode)
{
 switch (argmode) {
 case 130:
  fputs("usage: mandoc [-ac] [-I os=name] "
      "[-K encoding] [-mdoc | -man] [-O options]\n"
      "\t      [-T output] [-W level] [file ...]\n", stderr);
  break;
 case 129:
  fputs("usage: man [-acfhklw] [-C file] [-M path] "
      "[-m path] [-S subsection]\n"
      "\t   [[-s] section] name ...\n", stderr);
  break;
 case 128:
  fputs("usage: whatis [-afk] [-C file] "
      "[-M path] [-m path] [-O outkey] [-S arch]\n"
      "\t      [-s section] name ...\n", stderr);
  break;
 case 131:
  fputs("usage: apropos [-afk] [-C file] "
      "[-M path] [-m path] [-O outkey] [-S arch]\n"
      "\t       [-s section] expression ...\n", stderr);
  break;
 }
 exit((int)MANDOCLEVEL_BADARG);
}
