
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

void
usage(void)
{
 fprintf(stderr, "usage: dmesg [-ac] [-M core [-N system]]\n");
 exit(1);
}
