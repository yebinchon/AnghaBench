
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int sldns_buffer ;


 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ;
 int LDNS_WIREPARSE_ERR_OK ;
 int RET_ERR (int ,int ) ;
 int sldns_buffer_position (int *) ;
 int sldns_write_uint16 (int *,int ) ;
 int sldns_write_uint32 (int *,int ) ;

__attribute__((used)) static int
rrinternal_write_typeclassttl(sldns_buffer* strbuf, uint8_t* rr, size_t len,
 size_t dname_len, uint16_t tp, uint16_t cl, uint32_t ttl, int question)
{
 if(question) {

  if(dname_len + 4 > len)
   return RET_ERR(LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL,
    sldns_buffer_position(strbuf));
  sldns_write_uint16(rr+dname_len, tp);
  sldns_write_uint16(rr+dname_len+2, cl);
  return LDNS_WIREPARSE_ERR_OK;
 }


 if(dname_len + 10 > len)
  return RET_ERR(LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL,
   sldns_buffer_position(strbuf));
 sldns_write_uint16(rr+dname_len, tp);
 sldns_write_uint16(rr+dname_len+2, cl);
 sldns_write_uint32(rr+dname_len+4, ttl);
 sldns_write_uint16(rr+dname_len+8, 0);
 return LDNS_WIREPARSE_ERR_OK;
}
