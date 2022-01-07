
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int LDNS_NSEC3_VARS_OPTOUT_MASK ;
 size_t sldns_read_uint16 (int*) ;
 scalar_t__ sldns_str_print (char**,size_t*,char*) ;

__attribute__((used)) static int rr_comment_nsec3(char** s, size_t* slen, uint8_t* rr,
 size_t rrlen, size_t dname_off)
{
 size_t rdlen;
 uint8_t* rdata;
 int w = 0;
 if(rrlen < dname_off + 10) return 0;
 rdlen = sldns_read_uint16(rr+dname_off+8);
 if(rrlen < dname_off + 10 + rdlen) return 0;
 rdata = rr + dname_off + 10;
 if(rdlen < 2) return 0;
 if((rdata[1] & LDNS_NSEC3_VARS_OPTOUT_MASK))
  w += sldns_str_print(s, slen, " ;{flags: optout}");
 return w;
}
