
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int16_t ;
typedef int blf_ctx ;


 int Blowfish_expand0state (int *,int const*,int ) ;
 int Blowfish_initstate (int *) ;

void
blf_key(blf_ctx *c, const u_int8_t *k, u_int16_t len)
{

 Blowfish_initstate(c);


 Blowfish_expand0state(c, k, len);
}
