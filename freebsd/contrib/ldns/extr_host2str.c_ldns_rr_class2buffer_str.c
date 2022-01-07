
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ldns_status ;
typedef int ldns_rr_class ;
struct TYPE_3__ {int const name; } ;
typedef TYPE_1__ ldns_lookup_table ;
typedef int ldns_buffer ;


 int ldns_buffer_printf (int *,char*,int const) ;
 int ldns_buffer_status (int *) ;
 TYPE_1__* ldns_lookup_by_id (int ,int const) ;
 int ldns_rr_classes ;

ldns_status
ldns_rr_class2buffer_str(ldns_buffer *output,
                         const ldns_rr_class klass)
{
 ldns_lookup_table *lt;

 lt = ldns_lookup_by_id(ldns_rr_classes, klass);
 if (lt) {
  ldns_buffer_printf(output, "%s", lt->name);
 } else {
  ldns_buffer_printf(output, "CLASS%d", klass);
 }
 return ldns_buffer_status(output);
}
