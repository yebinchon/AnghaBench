
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int l_fp ;


 int LFPTOD (int *,double) ;
 int NBUF ;
 double average ;
 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 int get_systime (int *) ;
 int printf (char*,double) ;
 int stderr ;

int
main(
 int argc,
 char *argv[]
 )
{
 l_fp tr;
 int i, j;
 double dtemp, gtod[NBUF];




 for (i = 0; i < NBUF; i ++)
     gtod[i] = 0;




 for (i = 0; i < NBUF; i ++) {
  get_systime(&tr);
  LFPTOD(&tr, gtod[i]);
 }




 average = 0;
 for (i = 0; i < NBUF - 2; i++) {
  gtod[i] = gtod[i + 1] - gtod[i];
  printf("%13.9f\n", gtod[i]);
  average += gtod[i];
 }




 for (i = 0; i < NBUF - 2; i++) {
  for (j = 0; j <= i; j++) {
   if (gtod[j] > gtod[i]) {
    dtemp = gtod[j];
    gtod[j] = gtod[i];
    gtod[i] = dtemp;
   }
  }
 }
 average = average / (NBUF - 2);
 fprintf(stderr, "Average %13.9f\n", average);
 fprintf(stderr, "First rank\n");
 for (i = 0; i < 10; i++)
  fprintf(stderr, "%2d %13.9f\n", i, gtod[i]);
 fprintf(stderr, "Last rank\n");
 for (i = NBUF - 12; i < NBUF - 2; i++)
  fprintf(stderr, "%2d %13.9f\n", i, gtod[i]);
 exit(0);
}
