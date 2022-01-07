
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isset (char*,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
pbits(void *vp, int max)
{
 int i;
 char *p;
 int count, j;

 for (count = i = 0, p = vp; i < max; i++)
  if (isset(p, i)) {
   if (count)
    printf(",%s", count % 6 ? " " : "\n\t");
   count++;
   printf("%d", i);
   j = i;
   while ((i+1)<max && isset(p, i+1))
    i++;
   if (i != j)
    printf("-%d", i);
  }
 printf("\n");
}
