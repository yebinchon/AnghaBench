
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_type ;
typedef int ldns_rr ;




 int ldns_nsec_bitmap_covers_type (int ,int ) ;
 int ldns_rr_get_type (int const*) ;
 int ldns_rr_rd_count (int const*) ;
 int ldns_rr_rdf (int const*,int) ;

bool
ldns_nsec_type_check(const ldns_rr *nsec, ldns_rr_type t)
{
 switch (ldns_rr_get_type(nsec)) {
 case 129 : if (ldns_rr_rd_count(nsec) < 2) {
       return 0;
      }
      return ldns_nsec_bitmap_covers_type(
        ldns_rr_rdf(nsec, 1), t);

 case 128 : if (ldns_rr_rd_count(nsec) < 6) {
       return 0;
      }
      return ldns_nsec_bitmap_covers_type(
        ldns_rr_rdf(nsec, 5), t);

 default : return 0;
 }
}
