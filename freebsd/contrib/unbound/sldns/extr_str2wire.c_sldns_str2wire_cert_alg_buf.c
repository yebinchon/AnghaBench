
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {scalar_t__ id; } ;
typedef TYPE_1__ sldns_lookup_table ;


 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ;
 int LDNS_WIREPARSE_ERR_CERT_BAD_ALGORITHM ;
 int LDNS_WIREPARSE_ERR_OK ;
 int sldns_cert_algorithms ;
 TYPE_1__* sldns_lookup_by_name (int ,char const*) ;
 scalar_t__ sldns_read_uint16 (int *) ;
 int sldns_str2wire_int16_buf (char const*,int *,size_t*) ;
 int sldns_write_uint16 (int *,int ) ;

int sldns_str2wire_cert_alg_buf(const char* str, uint8_t* rd, size_t* len)
{
 sldns_lookup_table *lt = sldns_lookup_by_name(sldns_cert_algorithms,
  str);
 if(*len < 2)
  return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
 if(lt) {
  sldns_write_uint16(rd, (uint16_t)lt->id);
 } else {
  int s = sldns_str2wire_int16_buf(str, rd, len);
  if(s) return s;
  if(sldns_read_uint16(rd) == 0)
   return LDNS_WIREPARSE_ERR_CERT_BAD_ALGORITHM;
 }
 *len = 2;
 return LDNS_WIREPARSE_ERR_OK;
}
