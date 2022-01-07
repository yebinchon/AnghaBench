
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rdf ;


 int assert (int ) ;
 int ldns_rdf_data (int const*) ;
 int ldns_rdf_get_type (int const*) ;
 int * ldns_rdf_new_frm_data (int ,int ,int ) ;
 int ldns_rdf_size (int const*) ;

ldns_rdf *
ldns_rdf_clone(const ldns_rdf *rd)
{
 assert(rd != ((void*)0));
 return (ldns_rdf_new_frm_data( ldns_rdf_get_type(rd),
  ldns_rdf_size(rd), ldns_rdf_data(rd)));
}
