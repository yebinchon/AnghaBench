
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef void* u32 ;
typedef int context ;
struct TYPE_4__ {void* h4; void* h3; void* h2; void* h1; void* h0; void** h; } ;
typedef TYPE_1__ SHA_CTX ;


 int SHA1_Transform (TYPE_1__*,int const*) ;
 int os_memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void sha1_transform(u32 *state, const u8 data[64])
{
 SHA_CTX context;
 os_memset(&context, 0, sizeof(context));
 context.h0 = state[0];
 context.h1 = state[1];
 context.h2 = state[2];
 context.h3 = state[3];
 context.h4 = state[4];
 SHA1_Transform(&context, data);
 state[0] = context.h0;
 state[1] = context.h1;
 state[2] = context.h2;
 state[3] = context.h3;
 state[4] = context.h4;

}
