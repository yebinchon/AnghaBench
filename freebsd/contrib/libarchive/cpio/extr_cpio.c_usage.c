
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 char* lafe_getprogname () ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 const char *p;

 p = lafe_getprogname();

 fprintf(stderr, "Brief Usage:\n");
 fprintf(stderr, "  List:    %s -it < archive\n", p);
 fprintf(stderr, "  Extract: %s -i < archive\n", p);
 fprintf(stderr, "  Create:  %s -o < filenames > archive\n", p);
 fprintf(stderr, "  Help:    %s --help\n", p);
 exit(1);
}
