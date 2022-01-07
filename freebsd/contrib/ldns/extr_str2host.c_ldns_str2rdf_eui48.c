
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;
typedef int ldns_status ;
typedef int ldns_rdf ;


 int LDNS_RDF_TYPE_EUI48 ;
 int LDNS_STATUS_INVALID_EUI48 ;
 int LDNS_STATUS_MEM_ERR ;
 int LDNS_STATUS_OK ;
 int * ldns_rdf_new_frm_data (int ,int,unsigned int**) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,int*) ;
 scalar_t__ strlen (char const*) ;

ldns_status
ldns_str2rdf_eui48(ldns_rdf **rd, const char *str)
{
 unsigned int a, b, c, d, e, f;
 uint8_t bytes[6];
 int l;

 if (sscanf(str, "%2x-%2x-%2x-%2x-%2x-%2x%n",
   &a, &b, &c, &d, &e, &f, &l) != 6 ||
   l != (int)strlen(str)) {
  return LDNS_STATUS_INVALID_EUI48;
 } else {
  bytes[0] = a;
  bytes[1] = b;
  bytes[2] = c;
  bytes[3] = d;
  bytes[4] = e;
  bytes[5] = f;
  *rd = ldns_rdf_new_frm_data(LDNS_RDF_TYPE_EUI48, 6, &bytes);
 }
 return *rd ? LDNS_STATUS_OK : LDNS_STATUS_MEM_ERR;
}
