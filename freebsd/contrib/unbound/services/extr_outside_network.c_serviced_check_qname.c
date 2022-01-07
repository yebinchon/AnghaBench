
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int sldns_buffer ;


 scalar_t__ LABEL_IS_PTR (scalar_t__) ;
 scalar_t__ LDNS_MAX_LABELLEN ;
 int MAX_COMPRESS_PTRS ;
 int PTR_OFFSET (scalar_t__,scalar_t__) ;
 int log_assert (int) ;
 scalar_t__ memcmp (scalar_t__*,scalar_t__*,scalar_t__) ;
 scalar_t__* sldns_buffer_at (int *,int) ;
 scalar_t__* sldns_buffer_begin (int *) ;
 int sldns_buffer_limit (int *) ;

__attribute__((used)) static int
serviced_check_qname(sldns_buffer* pkt, uint8_t* qbuf, size_t qbuflen)
{
 uint8_t* d1 = sldns_buffer_begin(pkt)+12;
 uint8_t* d2 = qbuf+10;
 uint8_t len1, len2;
 int count = 0;
 if(sldns_buffer_limit(pkt) < 12+1+4)
  return 0;
 log_assert(qbuflen >= 15 );
 len1 = *d1++;
 len2 = *d2++;
 while(len1 != 0 || len2 != 0) {
  if(LABEL_IS_PTR(len1)) {

   if(d1 >= sldns_buffer_at(pkt, sldns_buffer_limit(pkt)))
    return 0;
   d1 = sldns_buffer_begin(pkt)+PTR_OFFSET(len1, *d1);

   if(d1 >= sldns_buffer_at(pkt, sldns_buffer_limit(pkt)))
    return 0;
   len1 = *d1++;
   if(count++ > MAX_COMPRESS_PTRS)
    return 0;
   continue;
  }
  if(d2 > qbuf+qbuflen)
   return 0;
  if(len1 != len2)
   return 0;
  if(len1 > LDNS_MAX_LABELLEN)
   return 0;

  if(d1+len1 >= sldns_buffer_at(pkt, sldns_buffer_limit(pkt)))
   return 0;
  log_assert(len1 <= LDNS_MAX_LABELLEN);
  log_assert(len2 <= LDNS_MAX_LABELLEN);
  log_assert(len1 == len2 && len1 != 0);

  if(memcmp(d1, d2, len1) != 0)
   return 0;
  d1 += len1;
  d2 += len2;
  len1 = *d1++;
  len2 = *d2++;
 }
 return 1;
}
