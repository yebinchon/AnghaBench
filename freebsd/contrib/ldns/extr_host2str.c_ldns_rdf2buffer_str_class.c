
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int ldns_status ;
typedef int ldns_rdf ;
struct TYPE_3__ {scalar_t__ name; } ;
typedef TYPE_1__ ldns_lookup_table ;
typedef int ldns_buffer ;


 int ldns_buffer_printf (int *,char*,scalar_t__) ;
 int ldns_buffer_status (int *) ;
 TYPE_1__* ldns_lookup_by_id (int ,int) ;
 int ldns_rdf_data (int const*) ;
 scalar_t__ ldns_read_uint16 (int ) ;
 int ldns_rr_classes ;

ldns_status
ldns_rdf2buffer_str_class(ldns_buffer *output, const ldns_rdf *rdf)
{
 uint16_t data = ldns_read_uint16(ldns_rdf_data(rdf));
 ldns_lookup_table *lt;

  lt = ldns_lookup_by_id(ldns_rr_classes, (int) data);
 if (lt) {
  ldns_buffer_printf(output, "\t%s", lt->name);
 } else {
  ldns_buffer_printf(output, "\tCLASS%d", data);
 }
 return ldns_buffer_status(output);
}
