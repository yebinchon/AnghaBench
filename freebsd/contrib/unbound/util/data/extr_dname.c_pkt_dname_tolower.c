
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int sldns_buffer ;


 scalar_t__ LABEL_IS_PTR (int) ;
 int MAX_COMPRESS_PTRS ;
 scalar_t__ PTR_OFFSET (int,int) ;
 int* sldns_buffer_at (int *,scalar_t__) ;
 int* sldns_buffer_end (int *) ;
 size_t sldns_buffer_limit (int *) ;
 scalar_t__ tolower (unsigned char) ;

void
pkt_dname_tolower(sldns_buffer* pkt, uint8_t* dname)
{
 uint8_t lablen;
 int count = 0;
 if(dname >= sldns_buffer_end(pkt))
  return;
 lablen = *dname++;
 while(lablen) {
  if(LABEL_IS_PTR(lablen)) {
   if((size_t)PTR_OFFSET(lablen, *dname)
    >= sldns_buffer_limit(pkt))
    return;
   dname = sldns_buffer_at(pkt, PTR_OFFSET(lablen, *dname));
   lablen = *dname++;
   if(count++ > MAX_COMPRESS_PTRS)
    return;
   continue;
  }
  if(dname+lablen >= sldns_buffer_end(pkt))
   return;
  while(lablen--) {
   *dname = (uint8_t)tolower((unsigned char)*dname);
   dname++;
  }
  if(dname >= sldns_buffer_end(pkt))
   return;
  lablen = *dname++;
 }
}
