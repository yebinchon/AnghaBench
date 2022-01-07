
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (int *,int *,size_t) ;
 int memmove (int *,int *,size_t) ;

__attribute__((used)) static size_t
synth_cname_buf(uint8_t* qname, size_t qname_len, size_t dname_len,
 uint8_t* dtarg, size_t dtarglen, uint8_t* buf, size_t buflen)
{
 size_t newlen = qname_len + dtarglen - dname_len;
 if(newlen > buflen) {

  return 0;
 }


 memcpy(buf, qname, qname_len-dname_len);
 memmove(buf+(qname_len-dname_len), dtarg, dtarglen);
 return newlen;
}
