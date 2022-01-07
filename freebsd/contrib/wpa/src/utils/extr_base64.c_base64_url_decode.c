
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* base64_gen_decode (unsigned char const*,size_t,size_t*,int ) ;
 int base64_url_table ;

unsigned char * base64_url_decode(const unsigned char *src, size_t len,
      size_t *out_len)
{
 return base64_gen_decode(src, len, out_len, base64_url_table);
}
