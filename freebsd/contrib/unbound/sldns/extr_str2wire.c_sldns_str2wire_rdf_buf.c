
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int sldns_rdf_type ;
 int LDNS_WIREPARSE_ERR_GENERAL ;
 int LDNS_WIREPARSE_ERR_NOT_IMPL ;
 int sldns_str2wire_a_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_aaaa_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_alg_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_apl_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_atma_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_b32_ext_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_b64_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_cert_alg_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_class_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_dname_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_eui48_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_eui64_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_hex_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_hip_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_ilnp64_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_int16_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_int16_data_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_int32_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_int8_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_ipseckey_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_loc_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_long_str_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_nsap_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_nsec3_salt_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_nsec_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_period_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_str_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_tag_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_time_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_tsigerror_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_tsigtime_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_type_buf (char const*,int *,size_t*) ;
 int sldns_str2wire_wks_buf (char const*,int *,size_t*) ;

int sldns_str2wire_rdf_buf(const char* str, uint8_t* rd, size_t* len,
 sldns_rdf_type rdftype)
{
 switch (rdftype) {
 case 155:
  return sldns_str2wire_dname_buf(str, rd, len);
 case 146:
  return sldns_str2wire_int8_buf(str, rd, len);
 case 149:
  return sldns_str2wire_int16_buf(str, rd, len);
 case 147:
  return sldns_str2wire_int32_buf(str, rd, len);
 case 164:
  return sldns_str2wire_a_buf(str, rd, len);
 case 163:
  return sldns_str2wire_aaaa_buf(str, rd, len);
 case 135:
  return sldns_str2wire_str_buf(str, rd, len);
 case 161:
  return sldns_str2wire_apl_buf(str, rd, len);
 case 158:
  return sldns_str2wire_b64_buf(str, rd, len);
 case 159:
  return sldns_str2wire_b32_ext_buf(str, rd, len);
 case 152:
  return sldns_str2wire_hex_buf(str, rd, len);
 case 140:
  return sldns_str2wire_nsec_buf(str, rd, len);
 case 130:
  return sldns_str2wire_type_buf(str, rd, len);
 case 156:
  return sldns_str2wire_class_buf(str, rd, len);
 case 157:
  return sldns_str2wire_cert_alg_buf(str, rd, len);
 case 162:
  return sldns_str2wire_alg_buf(str, rd, len);
 case 133:
  return sldns_str2wire_time_buf(str, rd, len);
 case 137:
  return sldns_str2wire_period_buf(str, rd, len);
 case 131:
  return sldns_str2wire_tsigtime_buf(str, rd, len);
 case 144:
  return sldns_str2wire_loc_buf(str, rd, len);
 case 128:
  return sldns_str2wire_wks_buf(str, rd, len);
 case 141:
  return sldns_str2wire_nsap_buf(str, rd, len);
 case 160:
  return sldns_str2wire_atma_buf(str, rd, len);
 case 145:
  return sldns_str2wire_ipseckey_buf(str, rd, len);
 case 138:
  return sldns_str2wire_nsec3_salt_buf(str, rd, len);
 case 139:
  return sldns_str2wire_b32_ext_buf(str, rd, len);
 case 150:
  return sldns_str2wire_ilnp64_buf(str, rd, len);
 case 154:
  return sldns_str2wire_eui48_buf(str, rd, len);
 case 153:
  return sldns_str2wire_eui64_buf(str, rd, len);
 case 134:
  return sldns_str2wire_tag_buf(str, rd, len);
 case 143:
  return sldns_str2wire_long_str_buf(str, rd, len);
 case 132:
  return sldns_str2wire_tsigerror_buf(str, rd, len);
 case 151:
  return sldns_str2wire_hip_buf(str, rd, len);
 case 148:
  return sldns_str2wire_int16_data_buf(str, rd, len);
 case 129:
 case 136:
  return LDNS_WIREPARSE_ERR_NOT_IMPL;
 case 142:
 default:
  break;
 }
 return LDNS_WIREPARSE_ERR_GENERAL;
}
