
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum verbosity_value { ____Placeholder_verbosity_value } verbosity_value ;


 int verbose (int,char*,char const*,unsigned int,...) ;

__attribute__((used)) static void
log_hex_f(enum verbosity_value v, const char* msg, void* data, size_t length)
{
 size_t i, j;
 uint8_t* data8 = (uint8_t*)data;
 const char* hexchar = "0123456789ABCDEF";
 char buf[1024+1];
 const size_t blocksize = 512;
 size_t len;

 if(length == 0) {
  verbose(v, "%s[%u]", msg, (unsigned)length);
  return;
 }

 for(i=0; i<length; i+=blocksize/2) {
  len = blocksize/2;
  if(length - i < blocksize/2)
   len = length - i;
  for(j=0; j<len; j++) {
   buf[j*2] = hexchar[ data8[i+j] >> 4 ];
   buf[j*2 + 1] = hexchar[ data8[i+j] & 0xF ];
  }
  buf[len*2] = 0;
  verbose(v, "%s[%u:%u] %.*s", msg, (unsigned)length,
   (unsigned)i, (int)len*2, buf);
 }
}
