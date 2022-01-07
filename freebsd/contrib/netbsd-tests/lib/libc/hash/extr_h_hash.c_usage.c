
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 char* getprogname () ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 (void)fprintf(stderr,
     "Usage:\t%s -r[ms] < test-file\n"
     "\t%s -t[ms]\n",
     getprogname(), getprogname());
 exit(1);

}
