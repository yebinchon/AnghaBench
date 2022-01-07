
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int sldns_buffer ;


 scalar_t__ LABEL_IS_PTR (scalar_t__) ;
 scalar_t__ LDNS_MAX_LABELLEN ;
 int PTR_OFFSET (scalar_t__,scalar_t__) ;
 int log_assert (int) ;
 scalar_t__* sldns_buffer_at (int *,int ) ;
 scalar_t__ tolower (unsigned char) ;

int
dname_pkt_compare(sldns_buffer* pkt, uint8_t* d1, uint8_t* d2)
{
 uint8_t len1, len2;
 log_assert(pkt && d1 && d2);
 len1 = *d1++;
 len2 = *d2++;
 while( len1 != 0 || len2 != 0 ) {

  if(LABEL_IS_PTR(len1)) {
   d1 = sldns_buffer_at(pkt, PTR_OFFSET(len1, *d1));
   len1 = *d1++;
   continue;
  }
  if(LABEL_IS_PTR(len2)) {
   d2 = sldns_buffer_at(pkt, PTR_OFFSET(len2, *d2));
   len2 = *d2++;
   continue;
  }

  log_assert(len1 <= LDNS_MAX_LABELLEN);
  log_assert(len2 <= LDNS_MAX_LABELLEN);
  if(len1 != len2) {
   if(len1 < len2) return -1;
   return 1;
  }
  log_assert(len1 == len2 && len1 != 0);

  while(len1--) {
   if(tolower((unsigned char)*d1) != tolower((unsigned char)*d2)) {
    if(tolower((unsigned char)*d1) < tolower((unsigned char)*d2))
     return -1;
    return 1;
   }
   d1++;
   d2++;
  }
  len1 = *d1++;
  len2 = *d2++;
 }
 return 0;
}
