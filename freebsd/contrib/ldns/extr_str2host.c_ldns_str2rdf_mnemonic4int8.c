
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ldns_status ;
typedef int ldns_rdf ;
struct TYPE_5__ {scalar_t__ id; } ;
typedef TYPE_1__ ldns_lookup_table ;


 int LDNS_RDF_TYPE_INT8 ;
 int LDNS_STATUS_ERR ;
 int LDNS_STATUS_OK ;
 TYPE_1__* ldns_lookup_by_name (TYPE_1__*,char const*) ;
 int * ldns_native2rdf_int8 (int ,int ) ;
 int ldns_str2rdf_int8 (int **,char const*) ;

__attribute__((used)) static ldns_status
ldns_str2rdf_mnemonic4int8(ldns_lookup_table *lt,
  ldns_rdf **rd, const char *str)
{
 if ((lt = ldns_lookup_by_name(lt, str))) {

  *rd = ldns_native2rdf_int8(LDNS_RDF_TYPE_INT8, (uint8_t) lt->id);
  if (!*rd)
   return LDNS_STATUS_ERR;
  else
   return LDNS_STATUS_OK;
 }
 return ldns_str2rdf_int8(rd, str);
}
