
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_type ;
typedef int ldns_rr_list ;
typedef int FILE ;





 int fprintf (int *,char*,char const*) ;
 int fputs (char*,int *) ;
 int ldns_rr_get_type (int ) ;
 int ldns_rr_list_rr (int *,size_t) ;
 size_t ldns_rr_list_rr_count (int *) ;
 int print_dnskey_abbr (int *,int ) ;
 int print_ds_abbr (int *,int ) ;
 int print_rrsig_abbr (int *,int ) ;

void
print_rr_list_abbr(FILE *fp, ldns_rr_list *rrlist, const char *usr)
{
 size_t i;
 ldns_rr_type tp;

 for(i = 0; i < ldns_rr_list_rr_count(rrlist); i++) {
  tp = ldns_rr_get_type(ldns_rr_list_rr(rrlist, i));
  if (i == 0 && tp != 128) {
   if (usr) {
    fprintf(fp, "%s ", usr);
   }
  }
  switch(tp) {
  case 130:
   print_dnskey_abbr(fp, ldns_rr_list_rr(rrlist, i));
   break;
  case 128:
   print_rrsig_abbr(fp, ldns_rr_list_rr(rrlist, i));
   break;
  case 129:
   print_ds_abbr(fp, ldns_rr_list_rr(rrlist, i));
   break;
  default:

   break;
  }
  fputs("\n", fp);
 }
}
