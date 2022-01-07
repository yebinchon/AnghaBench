
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ldns_status ;
typedef int ldns_rdf_type ;
typedef int ldns_rdf ;


 int LDNS_FREE (int *) ;
 scalar_t__ LDNS_STATUS_ERR ;
 scalar_t__ LDNS_STATUS_OK ;
 int ldns_rdf_set_type (int *,int ) ;
 scalar_t__ ldns_str2rdf_a (int **,char const*) ;
 scalar_t__ ldns_str2rdf_aaaa (int **,char const*) ;
 scalar_t__ ldns_str2rdf_alg (int **,char const*) ;
 scalar_t__ ldns_str2rdf_apl (int **,char const*) ;
 scalar_t__ ldns_str2rdf_atma (int **,char const*) ;
 scalar_t__ ldns_str2rdf_b32_ext (int **,char const*) ;
 scalar_t__ ldns_str2rdf_b64 (int **,char const*) ;
 scalar_t__ ldns_str2rdf_cert_alg (int **,char const*) ;
 scalar_t__ ldns_str2rdf_certificate_usage (int **,char const*) ;
 scalar_t__ ldns_str2rdf_class (int **,char const*) ;
 scalar_t__ ldns_str2rdf_dname (int **,char const*) ;
 scalar_t__ ldns_str2rdf_eui48 (int **,char const*) ;
 scalar_t__ ldns_str2rdf_eui64 (int **,char const*) ;
 scalar_t__ ldns_str2rdf_hex (int **,char const*) ;
 scalar_t__ ldns_str2rdf_hip (int **,char const*) ;
 scalar_t__ ldns_str2rdf_ilnp64 (int **,char const*) ;
 scalar_t__ ldns_str2rdf_int16 (int **,char const*) ;
 scalar_t__ ldns_str2rdf_int32 (int **,char const*) ;
 scalar_t__ ldns_str2rdf_int8 (int **,char const*) ;
 scalar_t__ ldns_str2rdf_ipseckey (int **,char const*) ;
 scalar_t__ ldns_str2rdf_loc (int **,char const*) ;
 scalar_t__ ldns_str2rdf_long_str (int **,char const*) ;
 scalar_t__ ldns_str2rdf_matching_type (int **,char const*) ;
 scalar_t__ ldns_str2rdf_nsap (int **,char const*) ;
 scalar_t__ ldns_str2rdf_nsec (int **,char const*) ;
 scalar_t__ ldns_str2rdf_nsec3_salt (int **,char const*) ;
 scalar_t__ ldns_str2rdf_period (int **,char const*) ;
 scalar_t__ ldns_str2rdf_selector (int **,char const*) ;
 scalar_t__ ldns_str2rdf_service (int **,char const*) ;
 scalar_t__ ldns_str2rdf_str (int **,char const*) ;
 scalar_t__ ldns_str2rdf_tag (int **,char const*) ;
 scalar_t__ ldns_str2rdf_time (int **,char const*) ;
 scalar_t__ ldns_str2rdf_type (int **,char const*) ;
 scalar_t__ ldns_str2rdf_unknown (int **,char const*) ;
 scalar_t__ ldns_str2rdf_wks (int **,char const*) ;

ldns_rdf *
ldns_rdf_new_frm_str(ldns_rdf_type type, const char *str)
{
 ldns_rdf *rdf = ((void*)0);
 ldns_status status;

 switch (type) {
 case 154:
  status = ldns_str2rdf_dname(&rdf, str);
  break;
 case 146:
  status = ldns_str2rdf_int8(&rdf, str);
  break;
 case 148:
  status = ldns_str2rdf_int16(&rdf, str);
  break;
 case 147:
  status = ldns_str2rdf_int32(&rdf, str);
  break;
 case 164:
  status = ldns_str2rdf_a(&rdf, str);
  break;
 case 163:
  status = ldns_str2rdf_aaaa(&rdf, str);
  break;
 case 133:
  status = ldns_str2rdf_str(&rdf, str);
  break;
 case 161:
  status = ldns_str2rdf_apl(&rdf, str);
  break;
 case 158:
  status = ldns_str2rdf_b64(&rdf, str);
  break;
 case 159:
  status = ldns_str2rdf_b32_ext(&rdf, str);
  break;
 case 151:
  status = ldns_str2rdf_hex(&rdf, str);
  break;
 case 139:
  status = ldns_str2rdf_nsec(&rdf, str);
  break;
 case 130:
  status = ldns_str2rdf_type(&rdf, str);
  break;
 case 155:
  status = ldns_str2rdf_class(&rdf, str);
  break;
 case 156:
  status = ldns_str2rdf_cert_alg(&rdf, str);
  break;
 case 162:
  status = ldns_str2rdf_alg(&rdf, str);
  break;
 case 129:
  status = ldns_str2rdf_unknown(&rdf, str);
  break;
 case 131:
  status = ldns_str2rdf_time(&rdf, str);
  break;
 case 136:
  status = ldns_str2rdf_period(&rdf, str);
  break;
 case 150:
  status = ldns_str2rdf_hip(&rdf, str);
  break;
 case 134:
  status = ldns_str2rdf_service(&rdf, str);
  break;
 case 144:
  status = ldns_str2rdf_loc(&rdf, str);
  break;
 case 128:
  status = ldns_str2rdf_wks(&rdf, str);
  break;
 case 140:
  status = ldns_str2rdf_nsap(&rdf, str);
  break;
 case 160:
  status = ldns_str2rdf_atma(&rdf, str);
  break;
 case 145:
  status = ldns_str2rdf_ipseckey(&rdf, str);
  break;
 case 137:
  status = ldns_str2rdf_nsec3_salt(&rdf, str);
  break;
 case 138:
  status = ldns_str2rdf_b32_ext(&rdf, str);
  break;
 case 149:
  status = ldns_str2rdf_ilnp64(&rdf, str);
  break;
 case 153:
  status = ldns_str2rdf_eui48(&rdf, str);
  break;
 case 152:
  status = ldns_str2rdf_eui64(&rdf, str);
  break;
 case 132:
  status = ldns_str2rdf_tag(&rdf, str);
  break;
 case 143:
  status = ldns_str2rdf_long_str(&rdf, str);
  break;
 case 157:
  status = ldns_str2rdf_certificate_usage(&rdf, str);
  break;
 case 135:
  status = ldns_str2rdf_selector(&rdf, str);
  break;
 case 142:
  status = ldns_str2rdf_matching_type(&rdf, str);
  break;
 case 141:
 default:

  status = LDNS_STATUS_ERR;
  break;
 }
 if (LDNS_STATUS_OK == status) {
  ldns_rdf_set_type(rdf, type);
  return rdf;
 }
 if (rdf) {
  LDNS_FREE(rdf);
 }
 return ((void*)0);
}
