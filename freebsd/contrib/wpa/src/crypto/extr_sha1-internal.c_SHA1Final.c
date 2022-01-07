
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int finalcount ;
struct TYPE_4__ {int* count; int* state; int* buffer; } ;
typedef TYPE_1__ SHA1_CTX ;


 int SHA1Update (TYPE_1__*,unsigned char*,int) ;
 int forced_memzero (unsigned char*,int) ;
 int os_memset (int*,int ,int) ;

void SHA1Final(unsigned char digest[20], SHA1_CTX* context)
{
 u32 i;
 unsigned char finalcount[8];

 for (i = 0; i < 8; i++) {
  finalcount[i] = (unsigned char)
   ((context->count[(i >= 4 ? 0 : 1)] >>
     ((3-(i & 3)) * 8) ) & 255);
 }
 SHA1Update(context, (unsigned char *) "\200", 1);
 while ((context->count[0] & 504) != 448) {
  SHA1Update(context, (unsigned char *) "\0", 1);
 }
 SHA1Update(context, finalcount, 8);

 for (i = 0; i < 20; i++) {
  digest[i] = (unsigned char)
   ((context->state[i >> 2] >> ((3 - (i & 3)) * 8)) &
    255);
 }

 os_memset(context->buffer, 0, 64);
 os_memset(context->state, 0, 20);
 os_memset(context->count, 0, 8);
 forced_memzero(finalcount, sizeof(finalcount));
}
