
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr ;
typedef int ldns_output_format ;
typedef int FILE ;


 int LDNS_FREE (char*) ;
 int fprintf (int *,char*,...) ;
 char* ldns_rr2str_fmt (int const*,int const*) ;

void
ldns_rr_print_fmt(FILE *output,
  const ldns_output_format *fmt, const ldns_rr *rr)
{
 char *str = ldns_rr2str_fmt(fmt, rr);
 if (str) {
  fprintf(output, "%s", str);
 } else {
  fprintf(output, ";Unable to convert rr to string\n");
 }
 LDNS_FREE(str);
}
