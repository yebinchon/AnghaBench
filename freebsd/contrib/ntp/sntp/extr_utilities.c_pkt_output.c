
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pkt {int dummy; } ;
typedef int FILE ;


 char* HLINE ;
 int fprintf (int *,char*,...) ;

void
pkt_output (
  struct pkt *dpkg,
  int pkt_length,
  FILE *output
    )
{
 register int a;
 u_char *pkt;

 pkt = (u_char *)dpkg;

 fprintf(output, HLINE);

 for (a = 0; a < pkt_length; a++) {
  if (a > 0 && a % 8 == 0)
   fprintf(output, "\n");

  fprintf(output, "%3d: %02x  ", a, pkt[a]);
 }

 fprintf(output, "\n");
 fprintf(output, HLINE);
}
