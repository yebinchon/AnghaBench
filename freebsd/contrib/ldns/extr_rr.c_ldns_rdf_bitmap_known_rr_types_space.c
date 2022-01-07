
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rdf ;


 int ldns_rdf_bitmap_known_rr_types_set (int **,int ) ;

ldns_status
ldns_rdf_bitmap_known_rr_types_space(ldns_rdf** rdf)
{
 return ldns_rdf_bitmap_known_rr_types_set(rdf, 0);
}
