
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef scalar_t__ ldns_status ;
typedef int ldns_rr_list ;
typedef int ldns_rr ;
typedef int FILE ;


 int LDNS_MAX_LINELEN ;
 scalar_t__ LDNS_RR_TYPE_DNSKEY ;
 scalar_t__ LDNS_RR_TYPE_DS ;
 scalar_t__ LDNS_STATUS_ERR ;
 scalar_t__ LDNS_STATUS_OK ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,...) ;
 char* ldns_get_errorstr_by_id (scalar_t__) ;
 int ldns_rr_free (int *) ;
 scalar_t__ ldns_rr_get_type (int *) ;
 int ldns_rr_list_push_rr (int *,int *) ;
 scalar_t__ ldns_rr_new_frm_str (int **,char*,int ,int *,int *) ;
 scalar_t__ read_line (int *,char*,int) ;
 int stderr ;
 char* strerror (int ) ;

ldns_status
read_key_file(const char *filename, ldns_rr_list *key_list, bool silently)
{
 int line_len = 0;
 int line_nr = 0;
 int key_count = 0;
 char line[LDNS_MAX_LINELEN];
 ldns_status status;
 FILE *input_file;
 ldns_rr *rr;

 input_file = fopen(filename, "r");
 if (!input_file) {
  if (! silently) {
   fprintf(stderr, "Error opening %s: %s\n",
    filename, strerror(errno));
  }
  return LDNS_STATUS_ERR;
 }
 while (line_len >= 0) {
  line_len = (int) read_line(input_file, line, sizeof(line));
  line_nr++;
  if (line_len > 0 && line[0] != ';') {
   status = ldns_rr_new_frm_str(&rr, line, 0, ((void*)0), ((void*)0));
   if (status != LDNS_STATUS_OK) {
    if (! silently) {
     fprintf(stderr,
      "Error parsing DNSKEY RR "
      "in line %d: %s\n", line_nr,
      ldns_get_errorstr_by_id(status)
      );
    }
   } else if (ldns_rr_get_type(rr) == LDNS_RR_TYPE_DNSKEY ||
        ldns_rr_get_type(rr) == LDNS_RR_TYPE_DS) {
    ldns_rr_list_push_rr(key_list, rr);
    key_count++;
   } else {
    ldns_rr_free(rr);
   }
  }
 }
 fclose(input_file);
 if (key_count > 0) {
  return LDNS_STATUS_OK;
 } else {

  return LDNS_STATUS_ERR;
 }
}
