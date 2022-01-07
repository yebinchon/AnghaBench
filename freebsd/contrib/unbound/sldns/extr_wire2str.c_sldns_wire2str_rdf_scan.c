
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
 int sldns_wire2str_a_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_aaaa_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_alg_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_apl_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_atma_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_b32_ext_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_b64_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_cert_alg_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_class_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_dname_scan (int **,size_t*,char**,size_t*,int *,size_t) ;
 int sldns_wire2str_eui48_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_eui64_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_hex_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_hip_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_ilnp64_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_int16_data_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_int16_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_int32_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_int8_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_ipseckey_scan (int **,size_t*,char**,size_t*,int *,size_t) ;
 int sldns_wire2str_loc_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_long_str_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_nsap_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_nsec3_salt_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_nsec_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_period_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_str_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_tag_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_time_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_tsigerror_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_tsigtime_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_type_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_unknown_scan (int **,size_t*,char**,size_t*) ;
 int sldns_wire2str_wks_scan (int **,size_t*,char**,size_t*) ;

int sldns_wire2str_rdf_scan(uint8_t** d, size_t* dlen, char** s, size_t* slen,
 int rdftype, uint8_t* pkt, size_t pktlen)
{
 if(*dlen == 0) return 0;
 switch(rdftype) {
 case 142:
  return 0;
 case 155:
  return sldns_wire2str_dname_scan(d, dlen, s, slen, pkt, pktlen);
 case 146:
  return sldns_wire2str_int8_scan(d, dlen, s, slen);
 case 149:
  return sldns_wire2str_int16_scan(d, dlen, s, slen);
 case 147:
  return sldns_wire2str_int32_scan(d, dlen, s, slen);
 case 137:
  return sldns_wire2str_period_scan(d, dlen, s, slen);
 case 131:
  return sldns_wire2str_tsigtime_scan(d, dlen, s, slen);
 case 164:
  return sldns_wire2str_a_scan(d, dlen, s, slen);
 case 163:
  return sldns_wire2str_aaaa_scan(d, dlen, s, slen);
 case 135:
  return sldns_wire2str_str_scan(d, dlen, s, slen);
 case 161:
  return sldns_wire2str_apl_scan(d, dlen, s, slen);
 case 159:
  return sldns_wire2str_b32_ext_scan(d, dlen, s, slen);
 case 158:
  return sldns_wire2str_b64_scan(d, dlen, s, slen);
 case 152:
  return sldns_wire2str_hex_scan(d, dlen, s, slen);
 case 140:
  return sldns_wire2str_nsec_scan(d, dlen, s, slen);
 case 138:
  return sldns_wire2str_nsec3_salt_scan(d, dlen, s, slen);
 case 130:
  return sldns_wire2str_type_scan(d, dlen, s, slen);
 case 156:
  return sldns_wire2str_class_scan(d, dlen, s, slen);
 case 157:
  return sldns_wire2str_cert_alg_scan(d, dlen, s, slen);
 case 162:
  return sldns_wire2str_alg_scan(d, dlen, s, slen);
 case 129:
  return sldns_wire2str_unknown_scan(d, dlen, s, slen);
 case 133:
  return sldns_wire2str_time_scan(d, dlen, s, slen);
 case 144:
  return sldns_wire2str_loc_scan(d, dlen, s, slen);
 case 128:
 case 136:
  return sldns_wire2str_wks_scan(d, dlen, s, slen);
 case 141:
  return sldns_wire2str_nsap_scan(d, dlen, s, slen);
 case 160:
  return sldns_wire2str_atma_scan(d, dlen, s, slen);
 case 145:
  return sldns_wire2str_ipseckey_scan(d, dlen, s, slen, pkt,
   pktlen);
 case 151:
  return sldns_wire2str_hip_scan(d, dlen, s, slen);
 case 148:
  return sldns_wire2str_int16_data_scan(d, dlen, s, slen);
 case 139:
  return sldns_wire2str_b32_ext_scan(d, dlen, s, slen);
 case 150:
  return sldns_wire2str_ilnp64_scan(d, dlen, s, slen);
 case 154:
  return sldns_wire2str_eui48_scan(d, dlen, s, slen);
 case 153:
  return sldns_wire2str_eui64_scan(d, dlen, s, slen);
 case 134:
  return sldns_wire2str_tag_scan(d, dlen, s, slen);
 case 143:
  return sldns_wire2str_long_str_scan(d, dlen, s, slen);
 case 132:
  return sldns_wire2str_tsigerror_scan(d, dlen, s, slen);
 }

 return -1;
}
