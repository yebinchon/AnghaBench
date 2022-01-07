
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ldns_status ;
typedef scalar_t__ ldns_pkt_rcode ;
struct TYPE_3__ {scalar_t__ name; } ;
typedef TYPE_1__ ldns_lookup_table ;
typedef int ldns_buffer ;


 int ldns_buffer_printf (int *,char*,scalar_t__) ;
 int ldns_buffer_status (int *) ;
 TYPE_1__* ldns_lookup_by_id (int ,scalar_t__) ;
 int ldns_rcodes ;

ldns_status
ldns_pkt_rcode2buffer_str(ldns_buffer *output, ldns_pkt_rcode rcode)
{
 ldns_lookup_table *lt = ldns_lookup_by_id(ldns_rcodes, rcode);
 if (lt && lt->name) {
  ldns_buffer_printf(output, "%s", lt->name);
 } else {
  ldns_buffer_printf(output, "RCODE%u", rcode);
 }
 return ldns_buffer_status(output);
}
