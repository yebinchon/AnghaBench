
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ ldns_output_format ;
struct TYPE_7__ {struct TYPE_7__* next; scalar_t__ rr; } ;
typedef TYPE_2__ ldns_dnssec_rrs ;
typedef int FILE ;


 int LDNS_COMMENT_LAYOUT ;
 int fprintf (int *,char*) ;
 int ldns_rr_print_fmt (int *,TYPE_1__ const*,scalar_t__) ;

void
ldns_dnssec_rrs_print_fmt(FILE *out, const ldns_output_format *fmt,
        const ldns_dnssec_rrs *rrs)
{
 if (!rrs) {
  if ((fmt->flags & LDNS_COMMENT_LAYOUT))
   fprintf(out, "; <void>");
 } else {
  if (rrs->rr) {
   ldns_rr_print_fmt(out, fmt, rrs->rr);
  }
  if (rrs->next) {
   ldns_dnssec_rrs_print_fmt(out, fmt, rrs->next);
  }
 }
}
