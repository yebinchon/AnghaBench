
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ldns_rr ;
struct TYPE_3__ {char* name; } ;
typedef TYPE_1__ ldns_lookup_table ;
typedef int FILE ;





 int fprintf (int *,char*,...) ;
 TYPE_1__* ldns_lookup_by_id (int ,int) ;
 int ldns_rr_classes ;
 int ldns_rr_get_class (int *) ;
 int ldns_rr_get_type (int *) ;

__attribute__((used)) static void
print_class_type(FILE *fp, ldns_rr *r)
{
 ldns_lookup_table *lt;
        lt = ldns_lookup_by_id(ldns_rr_classes, ldns_rr_get_class(r));
        if (lt) {
                fprintf(fp, " %s", lt->name);
        } else {
         fprintf(fp, " CLASS%d", ldns_rr_get_class(r));
        }

 switch (ldns_rr_get_type(r)) {
  case 128:
   fprintf(fp, " RRSIG ");
   break;
  case 130:
   fprintf(fp, " DNSKEY ");
   break;
  case 129:
   fprintf(fp, " DS ");
   break;
  default:
   break;
 }
}
