
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int* count; unsigned char const* buffer; int state; } ;
typedef TYPE_1__ SHA1_CTX ;


 int SHA1Transform (int ,unsigned char const*) ;
 int SHAPrintContext (TYPE_1__*,char*) ;
 int os_memcpy (unsigned char const*,unsigned char const*,int) ;

void SHA1Update(SHA1_CTX* context, const void *_data, u32 len)
{
 u32 i, j;
 const unsigned char *data = _data;




 j = (context->count[0] >> 3) & 63;
 if ((context->count[0] += len << 3) < (len << 3))
  context->count[1]++;
 context->count[1] += (len >> 29);
 if ((j + len) > 63) {
  os_memcpy(&context->buffer[j], data, (i = 64-j));
  SHA1Transform(context->state, context->buffer);
  for ( ; i + 63 < len; i += 64) {
   SHA1Transform(context->state, &data[i]);
  }
  j = 0;
 }
 else i = 0;
 os_memcpy(&context->buffer[j], &data[i], len - i);



}
