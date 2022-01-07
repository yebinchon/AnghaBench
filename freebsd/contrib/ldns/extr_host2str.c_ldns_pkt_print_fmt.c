
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_pkt ;
typedef int ldns_output_format ;
typedef int FILE ;


 int LDNS_FREE (char*) ;
 int fprintf (int *,char*,...) ;
 char* ldns_pkt2str_fmt (int const*,int const*) ;

void
ldns_pkt_print_fmt(FILE *output,
  const ldns_output_format *fmt, const ldns_pkt *pkt)
{
 char *str = ldns_pkt2str_fmt(fmt, pkt);
 if (str) {
  fprintf(output, "%s", str);
 } else {
  fprintf(output, ";Unable to convert packet to string\n");
 }
 LDNS_FREE(str);
}
