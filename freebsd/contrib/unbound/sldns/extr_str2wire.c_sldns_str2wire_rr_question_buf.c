
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int sldns_str2wire_rr_buf_internal (char const*,int *,size_t*,size_t*,int ,int *,size_t,int *,size_t,int) ;

int sldns_str2wire_rr_question_buf(const char* str, uint8_t* rr, size_t* len,
 size_t* dname_len, uint8_t* origin, size_t origin_len, uint8_t* prev,
 size_t prev_len)
{
 return sldns_str2wire_rr_buf_internal(str, rr, len, dname_len,
  0, origin, origin_len, prev, prev_len, 1);
}
