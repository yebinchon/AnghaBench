
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ldns_status ;
typedef int ldns_rdf ;


 int LDNS_RDF_TYPE_ILNP64 ;
 int LDNS_STATUS_INVALID_ILNP64 ;
 int LDNS_STATUS_MEM_ERR ;
 int LDNS_STATUS_OK ;
 int htons (unsigned int) ;
 int * ldns_rdf_new_frm_data (int ,int,int **) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,int*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strpbrk (char const*,char*) ;

ldns_status
ldns_str2rdf_ilnp64(ldns_rdf **rd, const char *str)
{
 unsigned int a, b, c, d;
 uint16_t shorts[4];
 int l;

 if (sscanf(str, "%4x:%4x:%4x:%4x%n", &a, &b, &c, &d, &l) != 4 ||
   l != (int)strlen(str) ||
   strpbrk(str, "+-")
   ) {
  return LDNS_STATUS_INVALID_ILNP64;
 } else {
  shorts[0] = htons(a);
  shorts[1] = htons(b);
  shorts[2] = htons(c);
  shorts[3] = htons(d);
  *rd = ldns_rdf_new_frm_data(
   LDNS_RDF_TYPE_ILNP64, 4 * sizeof(uint16_t), &shorts);
 }
 return *rd ? LDNS_STATUS_OK : LDNS_STATUS_MEM_ERR;
}
