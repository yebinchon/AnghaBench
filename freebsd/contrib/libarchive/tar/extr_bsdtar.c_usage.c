
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 char* lafe_getprogname () ;
 int stderr ;

void
usage(void)
{
 const char *p;

 p = lafe_getprogname();

 fprintf(stderr, "Usage:\n");
 fprintf(stderr, "  List:    %s -tf <archive-filename>\n", p);
 fprintf(stderr, "  Extract: %s -xf <archive-filename>\n", p);
 fprintf(stderr, "  Create:  %s -cf <archive-filename> [filenames...]\n", p);
 fprintf(stderr, "  Help:    %s --help\n", p);
 exit(1);
}
