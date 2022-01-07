
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

void
fail(char *msg)
{
 fprintf(stderr, "closefrom: %s\n", msg);
 exit(1);
}
