
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int sldns_buffer ;


 scalar_t__ LABEL_IS_PTR (scalar_t__) ;
 size_t LDNS_MAX_DOMAINLEN ;
 scalar_t__ LDNS_MAX_LABELLEN ;
 int PTR_OFFSET (scalar_t__,scalar_t__) ;
 int log_assert (int) ;
 int log_err (char*) ;
 int memmove (scalar_t__*,scalar_t__*,scalar_t__) ;
 scalar_t__* sldns_buffer_at (int *,int ) ;

void dname_pkt_copy(sldns_buffer* pkt, uint8_t* to, uint8_t* dname)
{

 size_t len = 0;
 uint8_t lablen;
 lablen = *dname++;
 while(lablen) {
  if(LABEL_IS_PTR(lablen)) {

   dname = sldns_buffer_at(pkt, PTR_OFFSET(lablen, *dname));
   lablen = *dname++;
   continue;
  }
  log_assert(lablen <= LDNS_MAX_LABELLEN);
  len += (size_t)lablen+1;
  if(len >= LDNS_MAX_DOMAINLEN) {
   *to = 0;
   log_err("bad dname in dname_pkt_copy");
   return;
  }
  *to++ = lablen;
  memmove(to, dname, lablen);
  dname += lablen;
  to += lablen;
  lablen = *dname++;
 }

 *to = 0;
}
