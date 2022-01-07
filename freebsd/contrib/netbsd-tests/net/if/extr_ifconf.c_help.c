
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*,char*,char*) ;
 char* getprogname () ;
 int stderr ;

__attribute__((used)) static void
help(void)
{
 fprintf(stderr, "usage:\n\t%s total\n\t%s list [<nifreqs>]\n",
     getprogname(), getprogname());
 exit(EXIT_FAILURE);
}
