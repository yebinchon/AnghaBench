
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int sldns_buffer ;


 int sldns_buffer_clear (int *) ;
 int sldns_buffer_flip (int *) ;
 int sldns_buffer_write (int *,int *,size_t) ;
 int sldns_buffer_write_u16 (int *,int) ;

__attribute__((used)) static void
serviced_gen_query(sldns_buffer* buff, uint8_t* qname, size_t qnamelen,
 uint16_t qtype, uint16_t qclass, uint16_t flags)
{
 sldns_buffer_clear(buff);

 sldns_buffer_write_u16(buff, flags);
 sldns_buffer_write_u16(buff, 1);
 sldns_buffer_write_u16(buff, 0);
 sldns_buffer_write_u16(buff, 0);
 sldns_buffer_write_u16(buff, 0);
 sldns_buffer_write(buff, qname, qnamelen);
 sldns_buffer_write_u16(buff, qtype);
 sldns_buffer_write_u16(buff, qclass);
 sldns_buffer_flip(buff);
}
