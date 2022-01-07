
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr ;
typedef int FILE ;


 scalar_t__ LDNS_RR_TYPE_DS ;
 int fprintf (int *,char*,...) ;
 int ldns_rdf_print (int *,int ) ;
 scalar_t__ ldns_rr_get_type (int *) ;
 int ldns_rr_owner (int *) ;
 int ldns_rr_rdf (int *,int) ;
 scalar_t__ ldns_rr_ttl (int *) ;
 int print_class_type (int *,int *) ;

void
print_ds_abbr(FILE *fp, ldns_rr *ds)
{
 if (!ds || (ldns_rr_get_type(ds) != LDNS_RR_TYPE_DS)) {
  return;
 }

 ldns_rdf_print(fp, ldns_rr_owner(ds));
 fprintf(fp, " %d", (int)ldns_rr_ttl(ds));
 print_class_type(fp, ds);
 ldns_rdf_print(fp, ldns_rr_rdf(ds, 0)); fprintf(fp, " ");
 ldns_rdf_print(fp, ldns_rr_rdf(ds, 1)); fprintf(fp, " ");
 ldns_rdf_print(fp, ldns_rr_rdf(ds, 2)); fprintf(fp, " ");
 ldns_rdf_print(fp, ldns_rr_rdf(ds, 3)); fprintf(fp, " ");
}
