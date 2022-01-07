
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bol ;
 scalar_t__ col ;
 int fprintf (int ,char*) ;
 int stderr ;

void
newline(void)
{

 fprintf(stderr, "\n");
 col = 0;
 bol = 1;
}
