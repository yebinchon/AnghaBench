
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 char* getprogname () ;
 int stderr ;

__attribute__((used)) static void
help(void)
{

 fprintf(stderr, "usage: %s (heads|hooks|link|unlink)\n", getprogname());
 exit(0);
}
