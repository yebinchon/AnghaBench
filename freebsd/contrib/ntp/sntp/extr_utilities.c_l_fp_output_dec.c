
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int l_fp ;
typedef int FILE ;


 char* HLINE ;
 int fprintf (int *,char*,...) ;

void
l_fp_output_dec (
  l_fp *ts,
  FILE *output
     )
{
 register int a;

 fprintf(output, HLINE);

 for(a=0; a<8; a++)
  fprintf(output, "%i: %i \t", a, ((unsigned char *) ts)[a]);

 fprintf(output, "\n");
 fprintf(output, HLINE);

}
