
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__ id; } ;
typedef TYPE_1__ sldns_lookup_table ;


 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ;
 int LDNS_WIREPARSE_ERR_OK ;
 int sldns_algorithms ;
 TYPE_1__* sldns_lookup_by_name (int ,char const*) ;
 int sldns_str2wire_int8_buf (char const*,scalar_t__*,size_t*) ;

int sldns_str2wire_alg_buf(const char* str, uint8_t* rd, size_t* len)
{
 sldns_lookup_table *lt = sldns_lookup_by_name(sldns_algorithms, str);
 if(*len < 1)
  return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
 if(lt) {
  rd[0] = (uint8_t)lt->id;
  *len = 1;
 } else {

  return sldns_str2wire_int8_buf(str, rd, len);
 }
 return LDNS_WIREPARSE_ERR_OK;
}
