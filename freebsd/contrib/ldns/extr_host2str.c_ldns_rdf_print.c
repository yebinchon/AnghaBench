
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rdf ;
typedef int FILE ;


 int LDNS_FREE (char*) ;
 int fprintf (int *,char*,...) ;
 char* ldns_rdf2str (int const*) ;

void
ldns_rdf_print(FILE *output, const ldns_rdf *rdf)
{
 char *str = ldns_rdf2str(rdf);
 if (str) {
  fprintf(output, "%s", str);
 } else {
  fprintf(output, ";Unable to convert rdf to string\n");
 }
 LDNS_FREE(str);
}
