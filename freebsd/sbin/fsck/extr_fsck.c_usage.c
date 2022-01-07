
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char const*) ;
 char* getprogname () ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 static const char common[] =
     "[-Cdfnpvy] [-B | -F] [-T fstype:fsoptions] [-t fstype] [-c fstab]";

 (void)fprintf(stderr, "usage: %s %s [special | node] ...\n",
     getprogname(), common);
 exit(1);
}
