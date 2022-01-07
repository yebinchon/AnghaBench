
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rdf ;
typedef int ldns_output_format ;
typedef int ldns_buffer ;
 int LDNS_STATUS_ERR ;
 int LDNS_STATUS_OK ;
 int ldns_buffer_printf (int *,char*) ;
 int ldns_rdf2buffer_str_a (int *,int const*) ;
 int ldns_rdf2buffer_str_aaaa (int *,int const*) ;
 int ldns_rdf2buffer_str_apl (int *,int const*) ;
 int ldns_rdf2buffer_str_atma (int *,int const*) ;
 int ldns_rdf2buffer_str_b32_ext (int *,int const*) ;
 int ldns_rdf2buffer_str_b64 (int *,int const*) ;
 int ldns_rdf2buffer_str_cert_alg (int *,int const*) ;
 int ldns_rdf2buffer_str_class (int *,int const*) ;
 int ldns_rdf2buffer_str_dname (int *,int const*) ;
 int ldns_rdf2buffer_str_eui48 (int *,int const*) ;
 int ldns_rdf2buffer_str_eui64 (int *,int const*) ;
 int ldns_rdf2buffer_str_hex (int *,int const*) ;
 int ldns_rdf2buffer_str_hip (int *,int const*) ;
 int ldns_rdf2buffer_str_ilnp64 (int *,int const*) ;
 int ldns_rdf2buffer_str_int16 (int *,int const*) ;
 int ldns_rdf2buffer_str_int16_data (int *,int const*) ;
 int ldns_rdf2buffer_str_int32 (int *,int const*) ;
 int ldns_rdf2buffer_str_int8 (int *,int const*) ;
 int ldns_rdf2buffer_str_ipseckey (int *,int const*) ;
 int ldns_rdf2buffer_str_loc (int *,int const*) ;
 int ldns_rdf2buffer_str_long_str (int *,int const*) ;
 int ldns_rdf2buffer_str_nsap (int *,int const*) ;
 int ldns_rdf2buffer_str_nsec3_salt (int *,int const*) ;
 int ldns_rdf2buffer_str_nsec_fmt (int *,int const*,int const*) ;
 int ldns_rdf2buffer_str_period (int *,int const*) ;
 int ldns_rdf2buffer_str_str (int *,int const*) ;
 int ldns_rdf2buffer_str_tag (int *,int const*) ;
 int ldns_rdf2buffer_str_time (int *,int const*) ;
 int ldns_rdf2buffer_str_tsigtime (int *,int const*) ;
 int ldns_rdf2buffer_str_type_fmt (int *,int const*,int const*) ;
 int ldns_rdf2buffer_str_unknown (int *,int const*) ;
 int ldns_rdf2buffer_str_wks (int *,int const*) ;
 int ldns_rdf_get_type (int const*) ;

__attribute__((used)) static ldns_status
ldns_rdf2buffer_str_fmt(ldns_buffer *buffer,
  const ldns_output_format* fmt, const ldns_rdf *rdf)
{
 ldns_status res = LDNS_STATUS_OK;


 if (rdf) {
  switch(ldns_rdf_get_type(rdf)) {
  case 142:
   break;
  case 156:
   res = ldns_rdf2buffer_str_dname(buffer, rdf);
   break;
  case 147:
  case 164:
  case 159:
  case 136:
  case 143:
   res = ldns_rdf2buffer_str_int8(buffer, rdf);
   break;
  case 150:
   res = ldns_rdf2buffer_str_int16(buffer, rdf);
   break;
  case 148:
   res = ldns_rdf2buffer_str_int32(buffer, rdf);
   break;
  case 137:
   res = ldns_rdf2buffer_str_period(buffer, rdf);
   break;
  case 131:
   res = ldns_rdf2buffer_str_tsigtime(buffer, rdf);
   break;
  case 166:
   res = ldns_rdf2buffer_str_a(buffer, rdf);
   break;
  case 165:
   res = ldns_rdf2buffer_str_aaaa(buffer, rdf);
   break;
  case 134:
   res = ldns_rdf2buffer_str_str(buffer, rdf);
   break;
  case 163:
   res = ldns_rdf2buffer_str_apl(buffer, rdf);
   break;
  case 161:
   res = ldns_rdf2buffer_str_b32_ext(buffer, rdf);
   break;
  case 160:
   res = ldns_rdf2buffer_str_b64(buffer, rdf);
   break;
  case 153:
   res = ldns_rdf2buffer_str_hex(buffer, rdf);
   break;
  case 140:
   res = ldns_rdf2buffer_str_nsec_fmt(buffer, fmt, rdf);
   break;
  case 138:
   res = ldns_rdf2buffer_str_nsec3_salt(buffer, rdf);
   break;
  case 130:
   res = ldns_rdf2buffer_str_type_fmt(buffer, fmt, rdf);
   break;
  case 157:
   res = ldns_rdf2buffer_str_class(buffer, rdf);
   break;
  case 158:
   res = ldns_rdf2buffer_str_cert_alg(buffer, rdf);
   break;
  case 129:
   res = ldns_rdf2buffer_str_unknown(buffer, rdf);
   break;
  case 132:
   res = ldns_rdf2buffer_str_time(buffer, rdf);
   break;
  case 152:
   res = ldns_rdf2buffer_str_hip(buffer, rdf);
   break;
  case 145:
   res = ldns_rdf2buffer_str_loc(buffer, rdf);
   break;
  case 128:
  case 135:
   res = ldns_rdf2buffer_str_wks(buffer, rdf);
   break;
  case 141:
   res = ldns_rdf2buffer_str_nsap(buffer, rdf);
   break;
  case 162:
   res = ldns_rdf2buffer_str_atma(buffer, rdf);
   break;
  case 146:
   res = ldns_rdf2buffer_str_ipseckey(buffer, rdf);
   break;
  case 149:
   res = ldns_rdf2buffer_str_int16_data(buffer, rdf);
   break;
  case 139:
   res = ldns_rdf2buffer_str_b32_ext(buffer, rdf);
   break;
  case 151:
   res = ldns_rdf2buffer_str_ilnp64(buffer, rdf);
   break;
  case 155:
   res = ldns_rdf2buffer_str_eui48(buffer, rdf);
   break;
  case 154:
   res = ldns_rdf2buffer_str_eui64(buffer, rdf);
   break;
  case 133:
   res = ldns_rdf2buffer_str_tag(buffer, rdf);
   break;
  case 144:
   res = ldns_rdf2buffer_str_long_str(buffer, rdf);
   break;
  }
 } else {

  ldns_buffer_printf(buffer, "(null) ");
  res = LDNS_STATUS_ERR;
 }
 return res;
}
