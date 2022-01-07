
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int warnx (char*,char const*) ;

__attribute__((used)) static void
usage(const char *cp)
{
 if (cp != ((void*)0))
  warnx("%s", cp);
 (void)fprintf(stderr,
     "usage: shutdown [-] [-c | -h | -p | -r | -k] [-o [-n]] time [warning-message ...]\n"
     "       poweroff\n");
 exit(1);
}
