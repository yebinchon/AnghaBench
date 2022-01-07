
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef size_t uint16_t ;


 scalar_t__ dname_char_print (char**,size_t*,int ) ;
 int sldns_str_print (char**,size_t*,char*,...) ;

int sldns_wire2str_dname_scan(uint8_t** d, size_t* dlen, char** s, size_t* slen,
 uint8_t* pkt, size_t pktlen)
{
 int w = 0;

 uint8_t* pos = *d;
 unsigned i, counter=0;
 const unsigned maxcompr = 1000;
 int in_buf = 1;
 if(*dlen == 0) return sldns_str_print(s, slen, "ErrorMissingDname");
 if(*pos == 0) {
  (*d)++;
  (*dlen)--;
  return sldns_str_print(s, slen, ".");
 }
 while(*pos) {

  uint8_t labellen = *pos++;
  if(in_buf) { (*d)++; (*dlen)--; }


  if((labellen&0xc0) == 0xc0) {

   uint16_t target = 0;
   if(in_buf && *dlen == 0)
    return w + sldns_str_print(s, slen,
     "ErrorPartialDname");
   else if(!in_buf && pos+1 > pkt+pktlen)
    return w + sldns_str_print(s, slen,
     "ErrorPartialDname");
   target = ((labellen&0x3f)<<8) | *pos;
   if(in_buf) { (*d)++; (*dlen)--; }

   if(!pkt || target >= pktlen)
    return w + sldns_str_print(s, slen,
     "ErrorComprPtrOutOfBounds");
   if(counter++ > maxcompr)
    return w + sldns_str_print(s, slen,
     "ErrorComprPtrLooped");
   in_buf = 0;
   pos = pkt+target;
   continue;
  } else if((labellen&0xc0)) {

   w += sldns_str_print(s, slen,
    "ErrorLABELTYPE%xIsUnknown",
    (int)(labellen&0xc0));
   return w;
  }


  if(in_buf && *dlen < (size_t)labellen)
   labellen = (uint8_t)*dlen;
  else if(!in_buf && pos+(size_t)labellen > pkt+pktlen)
   labellen = (uint8_t)(pkt + pktlen - pos);
  for(i=0; i<(unsigned)labellen; i++) {
   w += dname_char_print(s, slen, *pos++);
  }
  if(in_buf) {
   (*d) += labellen;
   (*dlen) -= labellen;
   if(*dlen == 0) break;
  }
  w += sldns_str_print(s, slen, ".");
 }

 if(in_buf && *dlen > 0) { (*d)++; (*dlen)--; }

 if(w == 0) w += sldns_str_print(s, slen, ".");
 return w;
}
