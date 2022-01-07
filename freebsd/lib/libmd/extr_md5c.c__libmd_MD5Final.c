
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int state; } ;
typedef TYPE_1__ MD5_CTX ;


 int Encode (unsigned char*,int ,int) ;
 int MD5Pad (TYPE_1__*) ;
 int explicit_bzero (TYPE_1__*,int) ;

void
MD5Final (unsigned char digest[16], MD5_CTX *context)
{

 MD5Pad (context);


 Encode (digest, context->state, 16);


 explicit_bzero(context, sizeof(*context));
}
