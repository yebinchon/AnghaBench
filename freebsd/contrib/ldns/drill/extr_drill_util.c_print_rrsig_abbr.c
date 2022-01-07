
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr ;
typedef int FILE ;


 scalar_t__ LDNS_RR_TYPE_RRSIG ;
 int fprintf (int *,char*,...) ;
 int ldns_rdf_print (int *,int ) ;
 scalar_t__ ldns_rr_get_type (int *) ;
 int ldns_rr_owner (int *) ;
 int ldns_rr_rdf (int *,int) ;
 scalar_t__ ldns_rr_ttl (int *) ;
 int print_class_type (int *,int *) ;

void
print_rrsig_abbr(FILE *fp, ldns_rr *sig) {
 if (!sig || (ldns_rr_get_type(sig) != LDNS_RR_TYPE_RRSIG)) {
  return;
 }

 ldns_rdf_print(fp, ldns_rr_owner(sig));
 fprintf(fp, " %d", (int)ldns_rr_ttl(sig));
 print_class_type(fp, sig);



 ldns_rdf_print(fp, ldns_rr_rdf(sig, 0)); fprintf(fp, " ");

 ldns_rdf_print(fp, ldns_rr_rdf(sig, 1)); fprintf(fp, " ");

 ldns_rdf_print(fp, ldns_rr_rdf(sig, 2)); fprintf(fp, " (\n\t\t\t");

 ldns_rdf_print(fp, ldns_rr_rdf(sig, 4)); fprintf(fp, " ");

 ldns_rdf_print(fp, ldns_rr_rdf(sig, 5)); fprintf(fp, " ");

 ldns_rdf_print(fp, ldns_rr_rdf(sig, 6)); fprintf(fp, " ");

 ldns_rdf_print(fp, ldns_rr_rdf(sig, 7)); fprintf(fp, ")");
}
