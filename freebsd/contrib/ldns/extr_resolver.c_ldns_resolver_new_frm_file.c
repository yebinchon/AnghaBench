
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ldns_status ;
typedef int ldns_resolver ;
typedef int FILE ;


 char const* LDNS_RESOLV_CONF ;
 scalar_t__ LDNS_STATUS_FILE_ERR ;
 scalar_t__ LDNS_STATUS_NULL ;
 scalar_t__ LDNS_STATUS_OK ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int ldns_resolver_free (int *) ;
 scalar_t__ ldns_resolver_new_frm_fp (int **,int *) ;

ldns_status
ldns_resolver_new_frm_file(ldns_resolver **res, const char *filename)
{
 ldns_resolver *r;
 FILE *fp;
 ldns_status s;

 if (!filename) {
  fp = fopen(LDNS_RESOLV_CONF, "r");

 } else {
  fp = fopen(filename, "r");
 }
 if (!fp) {
  return LDNS_STATUS_FILE_ERR;
 }

 s = ldns_resolver_new_frm_fp(&r, fp);
 fclose(fp);
 if (s == LDNS_STATUS_OK) {
  if (res) {
   *res = r;
   return LDNS_STATUS_OK;
  } else {
   ldns_resolver_free(r);
   return LDNS_STATUS_NULL;
  }
 }
 return s;
}
