
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_buffer ;


 char* ldns_buffer_export (int *) ;
 int ldns_buffer_position (int *) ;
 int ldns_buffer_reserve (int *,int) ;
 int ldns_buffer_set_capacity (int *,int ) ;
 int ldns_buffer_write_u8 (int *,int ) ;

char *
ldns_buffer_export2str(ldns_buffer *buffer)
{

 if (! ldns_buffer_reserve(buffer, 1)) {
  return ((void*)0);
 }
 ldns_buffer_write_u8(buffer, 0);


 ldns_buffer_set_capacity(buffer, ldns_buffer_position(buffer));
 return ldns_buffer_export(buffer);
}
