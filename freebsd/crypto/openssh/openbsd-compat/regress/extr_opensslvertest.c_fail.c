
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,long,long,int) ;
 int stderr ;

void
fail(long hver, long lver, int result)
{
 fprintf(stderr, "opensslver: header %lx library %lx != %d \n", hver, lver, result);
 exit(1);
}
