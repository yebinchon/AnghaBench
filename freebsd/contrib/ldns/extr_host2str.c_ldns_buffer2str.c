
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ldns_buffer ;


 scalar_t__* ldns_buffer_at (int *,int ) ;
 scalar_t__ ldns_buffer_begin (int *) ;
 int ldns_buffer_position (int *) ;
 int ldns_buffer_reserve (int *,int) ;
 int ldns_buffer_set_capacity (int *,int ) ;
 int ldns_buffer_write_u8 (int *,int ) ;
 char* strdup (char const*) ;

char *
ldns_buffer2str(ldns_buffer *buffer)
{
 char *str;



 if (*(ldns_buffer_at(buffer, ldns_buffer_position(buffer))) != 0) {
  if (!ldns_buffer_reserve(buffer, 1)) {
   return ((void*)0);
  }
  ldns_buffer_write_u8(buffer, (uint8_t) '\0');
  if (!ldns_buffer_set_capacity(buffer, ldns_buffer_position(buffer))) {
   return ((void*)0);
  }
 }

 str = strdup((const char *)ldns_buffer_begin(buffer));
        if(!str) {
                return ((void*)0);
        }
 return str;
}
