
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int8_t ;
typedef int u_int ;
struct TYPE_4__ {int count; } ;
typedef TYPE_1__ SHA1_CTX ;


 int SHA1Update (TYPE_1__*,scalar_t__*,int) ;

void
SHA1Pad(SHA1_CTX *context)
{
 u_int8_t finalcount[8];
 u_int i;

 for (i = 0; i < 8; i++) {
  finalcount[i] = (u_int8_t)((context->count >>
      ((7 - (i & 7)) * 8)) & 255);
 }
 SHA1Update(context, (u_int8_t *)"\200", 1);
 while ((context->count & 504) != 448)
  SHA1Update(context, (u_int8_t *)"\0", 1);
 SHA1Update(context, finalcount, 8);
}
