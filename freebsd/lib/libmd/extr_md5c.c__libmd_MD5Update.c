
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_3__ {int* count; unsigned char const* buffer; int state; } ;
typedef TYPE_1__ MD5_CTX ;


 int MD5Transform (int ,unsigned char const*) ;
 int memcpy (void*,void const*,unsigned int) ;

void
MD5Update (MD5_CTX *context, const void *in, unsigned int inputLen)
{
 unsigned int i, idx, partLen;
 const unsigned char *input = in;


 idx = (unsigned int)((context->count[0] >> 3) & 0x3F);


 if ((context->count[0] += ((u_int32_t)inputLen << 3))
     < ((u_int32_t)inputLen << 3))
  context->count[1]++;
 context->count[1] += ((u_int32_t)inputLen >> 29);

 partLen = 64 - idx;


 if (inputLen >= partLen) {
  memcpy((void *)&context->buffer[idx], (const void *)input,
      partLen);
  MD5Transform (context->state, context->buffer);

  for (i = partLen; i + 63 < inputLen; i += 64)
   MD5Transform (context->state, &input[i]);

  idx = 0;
 }
 else
  i = 0;


 memcpy ((void *)&context->buffer[idx], (const void *)&input[i],
     inputLen-i);
}
