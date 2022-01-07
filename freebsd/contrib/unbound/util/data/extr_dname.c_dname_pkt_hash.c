
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int sldns_buffer ;
typedef int hashvalue_type ;


 scalar_t__ LABEL_IS_PTR (int) ;
 int LDNS_MAX_LABELLEN ;
 int PTR_OFFSET (int,int) ;
 int hashlittle (int*,int,int ) ;
 int log_assert (int) ;
 int* sldns_buffer_at (int *,int ) ;
 scalar_t__ tolower (unsigned char) ;

hashvalue_type
dname_pkt_hash(sldns_buffer* pkt, uint8_t* dname, hashvalue_type h)
{
 uint8_t labuf[LDNS_MAX_LABELLEN+1];
 uint8_t lablen;
 int i;


 lablen = *dname++;
 while(lablen) {
  if(LABEL_IS_PTR(lablen)) {

   dname = sldns_buffer_at(pkt, PTR_OFFSET(lablen, *dname));
   lablen = *dname++;
   continue;
  }
  log_assert(lablen <= LDNS_MAX_LABELLEN);
  labuf[0] = lablen;
  i=0;
  while(lablen--) {
   labuf[++i] = (uint8_t)tolower((unsigned char)*dname);
   dname++;
  }
  h = hashlittle(labuf, labuf[0] + 1, h);
  lablen = *dname++;
 }

 return h;
}
