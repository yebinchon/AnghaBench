
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int crypto_onetimeauth_poly1305_state ;
struct TYPE_2__ {int (* onetimeauth_final ) (int *,unsigned char*) ;} ;


 TYPE_1__* implementation ;
 int stub1 (int *,unsigned char*) ;

int
crypto_onetimeauth_poly1305_final(crypto_onetimeauth_poly1305_state *state,
                                  unsigned char *out)
{
    return implementation->onetimeauth_final(state, out);
}
