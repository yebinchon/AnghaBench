
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int8_t ;
struct TYPE_5__ {int * state; } ;
typedef TYPE_1__ SHA256_CTX ;


 int BE_32_TO_8 (int *,int ) ;
 int SHA256_DIGEST_LENGTH ;
 int SHA256_Pad (TYPE_1__*) ;
 int memcpy (int *,int *,int ) ;
 int memset (TYPE_1__*,int ,int) ;

void
SHA256_Final(u_int8_t digest[SHA256_DIGEST_LENGTH], SHA256_CTX *context)
{
 SHA256_Pad(context);


 if (digest != ((void*)0)) {

  int i;


  for (i = 0; i < 8; i++)
   BE_32_TO_8(digest + i * 4, context->state[i]);



  memset(context, 0, sizeof(*context));
 }
}
