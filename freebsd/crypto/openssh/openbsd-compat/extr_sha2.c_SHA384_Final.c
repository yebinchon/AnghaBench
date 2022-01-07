
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int8_t ;
struct TYPE_5__ {int * state; } ;
typedef TYPE_1__ SHA384_CTX ;


 int BE_64_TO_8 (int *,int ) ;
 int SHA384_DIGEST_LENGTH ;
 int SHA384_Pad (TYPE_1__*) ;
 int memcpy (int *,int *,int ) ;
 int memset (TYPE_1__*,int ,int) ;

void
SHA384_Final(u_int8_t digest[SHA384_DIGEST_LENGTH], SHA384_CTX *context)
{
 SHA384_Pad(context);


 if (digest != ((void*)0)) {

  int i;


  for (i = 0; i < 6; i++)
   BE_64_TO_8(digest + i * 8, context->state[i]);



 }


 memset(context, 0, sizeof(*context));
}
