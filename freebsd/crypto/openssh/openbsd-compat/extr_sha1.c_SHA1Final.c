
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int8_t ;
typedef size_t u_int ;
struct TYPE_5__ {int* state; } ;
typedef TYPE_1__ SHA1_CTX ;


 int SHA1Pad (TYPE_1__*) ;
 size_t SHA1_DIGEST_LENGTH ;
 int memset (TYPE_1__*,int ,int) ;

void
SHA1Final(u_int8_t digest[SHA1_DIGEST_LENGTH], SHA1_CTX *context)
{
 u_int i;

 SHA1Pad(context);
 for (i = 0; i < SHA1_DIGEST_LENGTH; i++) {
  digest[i] = (u_int8_t)
     ((context->state[i>>2] >> ((3-(i & 3)) * 8) ) & 255);
 }
 memset(context, 0, sizeof(*context));
}
