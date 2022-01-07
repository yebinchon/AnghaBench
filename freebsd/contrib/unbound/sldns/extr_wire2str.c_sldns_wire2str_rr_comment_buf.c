
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int sldns_wire2str_rr_comment_print (char**,size_t*,int *,size_t,size_t,int ) ;
 int sldns_wirerr_get_type (int *,size_t,size_t) ;

int sldns_wire2str_rr_comment_buf(uint8_t* rr, size_t rrlen, size_t dname_len,
 char* s, size_t slen)
{
 uint16_t rrtype = sldns_wirerr_get_type(rr, rrlen, dname_len);
 return sldns_wire2str_rr_comment_print(&s, &slen, rr, rrlen, dname_len,
  rrtype);
}
