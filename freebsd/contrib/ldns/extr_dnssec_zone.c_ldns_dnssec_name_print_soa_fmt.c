
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; } ;
typedef TYPE_1__ ldns_output_format ;
struct TYPE_9__ {scalar_t__ nsec_signatures; scalar_t__ nsec; int name; scalar_t__ rrsets; } ;
typedef TYPE_2__ ldns_dnssec_name ;
typedef int FILE ;


 int LDNS_COMMENT_LAYOUT ;
 int fprintf (int *,char*) ;
 int ldns_dnssec_rrs_print_fmt (int *,TYPE_1__ const*,scalar_t__) ;
 int ldns_dnssec_rrsets_print_soa_fmt (int *,TYPE_1__ const*,scalar_t__,int,int) ;
 int ldns_rdf_print (int *,int ) ;
 int ldns_rr_print_fmt (int *,TYPE_1__ const*,scalar_t__) ;

__attribute__((used)) static void
ldns_dnssec_name_print_soa_fmt(FILE *out, const ldns_output_format *fmt,
  const ldns_dnssec_name *name,
  bool show_soa)
{
 if (name) {
  if(name->rrsets) {
   ldns_dnssec_rrsets_print_soa_fmt(out, fmt,
     name->rrsets, 1, show_soa);
  } else if ((fmt->flags & LDNS_COMMENT_LAYOUT)) {
   fprintf(out, ";; Empty nonterminal: ");
   ldns_rdf_print(out, name->name);
   fprintf(out, "\n");
  }
  if(name->nsec) {
   ldns_rr_print_fmt(out, fmt, name->nsec);
  }
  if (name->nsec_signatures) {
   ldns_dnssec_rrs_print_fmt(out, fmt,
     name->nsec_signatures);
  }
 } else if ((fmt->flags & LDNS_COMMENT_LAYOUT)) {
  fprintf(out, "; <void>\n");
 }
}
