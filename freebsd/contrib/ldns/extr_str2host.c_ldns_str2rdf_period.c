
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int ldns_status ;
typedef int ldns_rdf ;


 int LDNS_RDF_TYPE_PERIOD ;
 int LDNS_STATUS_ERR ;
 int LDNS_STATUS_MEM_ERR ;
 int LDNS_STATUS_OK ;
 scalar_t__ htonl (scalar_t__) ;
 int * ldns_rdf_new_frm_data (int ,int,scalar_t__*) ;
 scalar_t__ ldns_str2period (char const*,char const**) ;

ldns_status
ldns_str2rdf_period(ldns_rdf **rd,const char *period)
{
        uint32_t p;
        const char *end;


        p = ldns_str2period(period, &end);

        if (*end != 0) {
  return LDNS_STATUS_ERR;
        } else {
                p = (uint32_t) htonl(p);
  *rd = ldns_rdf_new_frm_data(
   LDNS_RDF_TYPE_PERIOD, sizeof(uint32_t), &p);
        }
 return *rd?LDNS_STATUS_OK:LDNS_STATUS_MEM_ERR;
}
