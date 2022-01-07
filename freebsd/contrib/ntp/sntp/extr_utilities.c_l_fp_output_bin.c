
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int l_fp ;
typedef int FILE ;


 char* HLINE ;
 int fprintf (int *,char*,...) ;
 scalar_t__ pow (int,int) ;

void
l_fp_output_bin (
  l_fp *ts,
  FILE *output
  )
{
 register int a, b;

 fprintf(output, HLINE);

 for(a=0; a<8; a++) {
  short tmp = ((unsigned char *) ts)[a];
  tmp++;

  fprintf(output, "%i: ", a);

  for(b=7; b>=0; b--) {
   int texp = (int) pow(2, b);

   if(tmp - texp > 0) {
    fprintf(output, "1");
    tmp -= texp;
   }
   else {
    fprintf(output, "0");
   }
  }

  fprintf(output, " ");
 }

 fprintf(output, "\n");
 fprintf(output, HLINE);
}
