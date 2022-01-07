
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sldns_rdf_type ;


 scalar_t__ LDNS_RDF_TYPE_LONG_STR ;
 scalar_t__ LDNS_RDF_TYPE_STR ;

__attribute__((used)) static int
sldns_rdf_type_maybe_quoted(sldns_rdf_type rdf_type)
{
 return rdf_type == LDNS_RDF_TYPE_STR ||
  rdf_type == LDNS_RDF_TYPE_LONG_STR;
}
