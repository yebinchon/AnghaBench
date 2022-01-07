
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ldns_status ;
typedef int ldns_rr_type ;
struct TYPE_3__ {int const _name; } ;
typedef TYPE_1__ ldns_rr_descriptor ;
typedef int ldns_buffer ;







 int ldns_buffer_printf (int *,char*,...) ;
 int ldns_buffer_status (int *) ;
 TYPE_1__* ldns_rr_descript (int const) ;

ldns_status
ldns_rr_type2buffer_str(ldns_buffer *output, const ldns_rr_type type)
{
 const ldns_rr_descriptor *descriptor;

 descriptor = ldns_rr_descript(type);

 switch (type) {
  case 130:
   ldns_buffer_printf(output, "IXFR");
   break;
  case 131:
   ldns_buffer_printf(output, "AXFR");
   break;
  case 129:
   ldns_buffer_printf(output, "MAILA");
   break;
  case 128:
   ldns_buffer_printf(output, "MAILB");
   break;
  case 132:
   ldns_buffer_printf(output, "ANY");
   break;
  default:
   if (descriptor && descriptor->_name) {
    ldns_buffer_printf(output, "%s", descriptor->_name);
   } else {
    ldns_buffer_printf(output, "TYPE%u", type);
   }
 }
 return ldns_buffer_status(output);
}
