
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ ldns_output_format ;
struct TYPE_8__ {struct TYPE_8__* next; TYPE_6__* signatures; TYPE_6__* rrs; } ;
typedef TYPE_2__ ldns_dnssec_rrsets ;
struct TYPE_9__ {int rr; } ;
typedef int FILE ;


 int LDNS_COMMENT_LAYOUT ;
 scalar_t__ LDNS_RR_TYPE_SOA ;
 int fprintf (int *,char*) ;
 int ldns_dnssec_rrs_print_fmt (int *,TYPE_1__ const*,TYPE_6__*) ;
 scalar_t__ ldns_rr_get_type (int ) ;

__attribute__((used)) static void
ldns_dnssec_rrsets_print_soa_fmt(FILE *out, const ldns_output_format *fmt,
  const ldns_dnssec_rrsets *rrsets,
  bool follow,
  bool show_soa)
{
 if (!rrsets) {
  if ((fmt->flags & LDNS_COMMENT_LAYOUT))
   fprintf(out, "; <void>\n");
 } else {
  if (rrsets->rrs &&
      (show_soa ||
   ldns_rr_get_type(rrsets->rrs->rr) != LDNS_RR_TYPE_SOA
      )
     ) {
   ldns_dnssec_rrs_print_fmt(out, fmt, rrsets->rrs);
   if (rrsets->signatures) {
    ldns_dnssec_rrs_print_fmt(out, fmt,
      rrsets->signatures);
   }
  }
  if (follow && rrsets->next) {
   ldns_dnssec_rrsets_print_soa_fmt(out, fmt,
     rrsets->next, follow, show_soa);
  }
 }
}
