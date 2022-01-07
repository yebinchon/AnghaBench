
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ldns_status ;
struct TYPE_3__ {scalar_t__ name; } ;
typedef TYPE_1__ ldns_lookup_table ;
typedef scalar_t__ ldns_cert_algorithm ;
typedef int ldns_buffer ;


 int ldns_buffer_printf (int *,char*,scalar_t__) ;
 int ldns_buffer_status (int *) ;
 int ldns_cert_algorithms ;
 TYPE_1__* ldns_lookup_by_id (int ,scalar_t__) ;

ldns_status
ldns_cert_algorithm2buffer_str(ldns_buffer *output,
                               ldns_cert_algorithm cert_algorithm)
{
 ldns_lookup_table *lt = ldns_lookup_by_id(ldns_cert_algorithms,
                                           cert_algorithm);
 if (lt && lt->name) {
  ldns_buffer_printf(output, "%s", lt->name);
 } else {
  ldns_buffer_printf(output, "CERT_ALG%u",
                     cert_algorithm);
 }
 return ldns_buffer_status(output);
}
