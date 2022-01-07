
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int ldns_status ;
typedef int ldns_rdf ;
typedef int ldns_dane_transport ;





 int LDNS_MAX_DOMAINLEN ;
 scalar_t__ LDNS_RDF_TYPE_DNAME ;
 int LDNS_STATUS_DANE_UNKNOWN_TRANSPORT ;
 int LDNS_STATUS_DOMAINNAME_OVERFLOW ;
 int LDNS_STATUS_MEM_ERR ;
 int LDNS_STATUS_OK ;
 int assert (int) ;
 int ldns_rdf_data (int const*) ;
 scalar_t__ ldns_rdf_get_type (int const*) ;
 int * ldns_rdf_new_frm_data (scalar_t__,int,char*) ;
 int ldns_rdf_size (int const*) ;
 int memcpy (char*,int ,int) ;
 scalar_t__ snprintf (char*,int,char*,...) ;

ldns_status
ldns_dane_create_tlsa_owner(ldns_rdf** tlsa_owner, const ldns_rdf* name,
  uint16_t port, ldns_dane_transport transport)
{
 char buf[LDNS_MAX_DOMAINLEN];
 size_t s;

 assert(tlsa_owner != ((void*)0));
 assert(name != ((void*)0));
 assert(ldns_rdf_get_type(name) == LDNS_RDF_TYPE_DNAME);

 s = (size_t)snprintf(buf, LDNS_MAX_DOMAINLEN, "X_%d", (int)port);
 buf[0] = (char)(s - 1);

 switch(transport) {
 case 129:
  s += snprintf(buf + s, LDNS_MAX_DOMAINLEN - s, "\004_tcp");
  break;

 case 128:
  s += snprintf(buf + s, LDNS_MAX_DOMAINLEN - s, "\004_udp");
  break;

 case 130:
  s += snprintf(buf + s, LDNS_MAX_DOMAINLEN - s, "\005_sctp");
  break;

 default:
  return LDNS_STATUS_DANE_UNKNOWN_TRANSPORT;
 }
 if (s + ldns_rdf_size(name) > LDNS_MAX_DOMAINLEN) {
  return LDNS_STATUS_DOMAINNAME_OVERFLOW;
 }
 memcpy(buf + s, ldns_rdf_data(name), ldns_rdf_size(name));
 *tlsa_owner = ldns_rdf_new_frm_data(LDNS_RDF_TYPE_DNAME,
   s + ldns_rdf_size(name), buf);
 if (*tlsa_owner == ((void*)0)) {
  return LDNS_STATUS_MEM_ERR;
 }
 return LDNS_STATUS_OK;
}
