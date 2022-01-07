
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,int,...) ;
 int stderr ;

void bcheck2(int n, int c1, int c2)
{
 if (n == 1)
  fprintf(stderr, "\tmissing %c\n", c2);
 else if (n > 1)
  fprintf(stderr, "\t%d missing %c's\n", n, c2);
 else if (n == -1)
  fprintf(stderr, "\textra %c\n", c2);
 else if (n < -1)
  fprintf(stderr, "\t%d extra %c's\n", -n, c2);
}
