
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_zone ;
typedef scalar_t__ ldns_status ;
typedef int ldns_rr_list ;
typedef int ldns_rr ;
typedef int FILE ;


 scalar_t__ LDNS_RR_TYPE_A ;
 scalar_t__ LDNS_RR_TYPE_AAAA ;
 scalar_t__ LDNS_STATUS_OK ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char const*,...) ;
 char* ldns_get_errorstr_by_id (scalar_t__) ;
 int ldns_rr_clone (int *) ;
 scalar_t__ ldns_rr_get_type (int *) ;
 int * ldns_rr_list_new () ;
 int ldns_rr_list_push_rr (int *,int ) ;
 int * ldns_rr_list_rr (int ,size_t) ;
 size_t ldns_rr_list_rr_count (int ) ;
 int ldns_zone_deep_free (int *) ;
 scalar_t__ ldns_zone_new_frm_fp_l (int **,int *,int *,int ,int ,int*) ;
 int ldns_zone_rrs (int *) ;
 int stderr ;
 char* strerror (int ) ;

ldns_rr_list *
read_root_hints(const char *filename)
{
 FILE *fp = ((void*)0);
 int line_nr = 0;
 ldns_zone *z;
 ldns_status status;
 ldns_rr_list *addresses = ((void*)0);
 ldns_rr *rr;
 size_t i;

 fp = fopen(filename, "r");
 if (!fp) {
  fprintf(stderr, "Unable to open %s for reading: %s\n", filename, strerror(errno));
  return ((void*)0);
 }

 status = ldns_zone_new_frm_fp_l(&z, fp, ((void*)0), 0, 0, &line_nr);
 fclose(fp);
 if (status != LDNS_STATUS_OK) {
  fprintf(stderr, "Error reading root hints file: %s\n", ldns_get_errorstr_by_id(status));
  return ((void*)0);
 } else {
  addresses = ldns_rr_list_new();
  for (i = 0; i < ldns_rr_list_rr_count(ldns_zone_rrs(z)); i++) {
   rr = ldns_rr_list_rr(ldns_zone_rrs(z), i);


   if ( ldns_rr_get_type(rr) == LDNS_RR_TYPE_A ) {
    ldns_rr_list_push_rr(addresses, ldns_rr_clone(rr));
   }

   if ( ldns_rr_get_type(rr) == LDNS_RR_TYPE_AAAA) {
    ldns_rr_list_push_rr(addresses, ldns_rr_clone(rr));
   }
  }
  ldns_zone_deep_free(z);
  return addresses;
 }
}
