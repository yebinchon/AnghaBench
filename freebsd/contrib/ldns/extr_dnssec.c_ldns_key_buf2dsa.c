
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_buffer ;
typedef int DSA ;


 scalar_t__ ldns_buffer_begin (int const*) ;
 int ldns_buffer_position (int const*) ;
 int * ldns_key_buf2dsa_raw (unsigned char const*,int ) ;

DSA *
ldns_key_buf2dsa(const ldns_buffer *key)
{
 return ldns_key_buf2dsa_raw((const unsigned char*)ldns_buffer_begin(key),
         ldns_buffer_position(key));
}
