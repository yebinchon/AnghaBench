
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* base64_gen_encode (unsigned char const*,size_t,size_t*,int ,int) ;
 int base64_url_table ;

unsigned char * base64_url_encode(const unsigned char *src, size_t len,
      size_t *out_len, int add_pad)
{
 return base64_gen_encode(src, len, out_len, base64_url_table, add_pad);
}
