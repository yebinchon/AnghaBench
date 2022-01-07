
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* _name; } ;
typedef TYPE_1__ ldns_rr_descriptor ;
typedef int ldns_output_format ;
struct TYPE_8__ {char* name; } ;
typedef TYPE_2__ ldns_lookup_table ;
struct TYPE_9__ {scalar_t__ packet_qtype; int signatures; int rrset; scalar_t__ packet_nodata; scalar_t__ packet_rcode; struct TYPE_9__* parent; } ;
typedef TYPE_3__ ldns_dnssec_data_chain ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 TYPE_2__* ldns_lookup_by_id (int ,int) ;
 int ldns_rcodes ;
 TYPE_1__* ldns_rr_descript (scalar_t__) ;
 int ldns_rr_list_print_fmt (int *,int const*,int ) ;
 scalar_t__ ldns_rr_list_rr_count (int ) ;

void
ldns_dnssec_data_chain_print_fmt(FILE *out, const ldns_output_format *fmt,
  const ldns_dnssec_data_chain *chain)
{
 ldns_lookup_table *rcode;
 const ldns_rr_descriptor *rr_descriptor;
 if (chain) {
  ldns_dnssec_data_chain_print_fmt(out, fmt, chain->parent);
  if (ldns_rr_list_rr_count(chain->rrset) > 0) {
   rcode = ldns_lookup_by_id(ldns_rcodes,
         (int) chain->packet_rcode);
   if (rcode) {
    fprintf(out, ";; rcode: %s\n", rcode->name);
   }

   rr_descriptor = ldns_rr_descript(chain->packet_qtype);
   if (rr_descriptor && rr_descriptor->_name) {
    fprintf(out, ";; qtype: %s\n", rr_descriptor->_name);
   } else if (chain->packet_qtype != 0) {
    fprintf(out, "TYPE%u",
        chain->packet_qtype);
   }
   if (chain->packet_nodata) {
    fprintf(out, ";; NODATA response\n");
   }
   fprintf(out, "rrset:\n");
   ldns_rr_list_print_fmt(out, fmt, chain->rrset);
   fprintf(out, "sigs:\n");
   ldns_rr_list_print_fmt(out, fmt, chain->signatures);
   fprintf(out, "---\n");
  } else {
   fprintf(out, "<no data>\n");
  }
 }
}
