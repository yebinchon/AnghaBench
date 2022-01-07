
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int ldns_status ;
typedef int ldns_rdf ;
typedef int ldns_output_format ;
typedef int ldns_buffer ;
struct TYPE_2__ {scalar_t__ _name; } ;


 int ldns_buffer_printf (int *,char*,scalar_t__) ;
 int ldns_buffer_status (int *) ;
 int ldns_output_format_covers_type (int const*,scalar_t__) ;
 int ldns_rdf_data (int const*) ;
 scalar_t__ ldns_read_uint16 (int ) ;
 TYPE_1__* ldns_rr_descript (scalar_t__) ;

__attribute__((used)) static ldns_status
ldns_rdf2buffer_str_type_fmt(ldns_buffer *output,
  const ldns_output_format* fmt, const ldns_rdf *rdf)
{
        uint16_t data = ldns_read_uint16(ldns_rdf_data(rdf));

 if (! ldns_output_format_covers_type(fmt, data) &&
   ldns_rr_descript(data) &&
   ldns_rr_descript(data)->_name) {

  ldns_buffer_printf(output, "%s",ldns_rr_descript(data)->_name);
 } else {
  ldns_buffer_printf(output, "TYPE%u", data);
 }
 return ldns_buffer_status(output);
}
