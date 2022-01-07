
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
struct TYPE_3__ {int count; int * buffer; int state; } ;
typedef TYPE_1__ SHA1_CTX ;


 int SHA1Transform (int ,int *) ;
 int memcpy (int *,int const*,size_t) ;

void
SHA1Update(SHA1_CTX *context, const u_int8_t *data, size_t len)
{
 size_t i, j;

 j = (size_t)((context->count >> 3) & 63);
 context->count += (len << 3);
 if ((j + len) > 63) {
  (void)memcpy(&context->buffer[j], data, (i = 64-j));
  SHA1Transform(context->state, context->buffer);
  for ( ; i + 63 < len; i += 64)
   SHA1Transform(context->state, (u_int8_t *)&data[i]);
  j = 0;
 } else {
  i = 0;
 }
 (void)memcpy(&context->buffer[j], &data[i], len - i);
}
