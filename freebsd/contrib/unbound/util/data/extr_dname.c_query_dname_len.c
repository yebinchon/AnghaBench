
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int sldns_buffer ;


 size_t LDNS_MAX_DOMAINLEN ;
 size_t sldns_buffer_read_u8 (int *) ;
 size_t sldns_buffer_remaining (int *) ;
 int sldns_buffer_skip (int *,int ) ;

size_t
query_dname_len(sldns_buffer* query)
{
 size_t len = 0;
 size_t labellen;
 while(1) {
  if(sldns_buffer_remaining(query) < 1)
   return 0;
  labellen = sldns_buffer_read_u8(query);
  if(labellen&0xc0)
   return 0;
  len += labellen + 1;
  if(len > LDNS_MAX_DOMAINLEN)
   return 0;
  if(labellen == 0)
   return len;
  if(sldns_buffer_remaining(query) < labellen)
   return 0;
  sldns_buffer_skip(query, (ssize_t)labellen);
 }
}
