
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * arch_isaoutb; int * arch_isainb; } ;


 TYPE_1__ archsw ;
 scalar_t__ isapnp_isolation_protocol () ;
 int isapnp_readport ;

__attribute__((used)) static void
isapnp_enumerate(void)
{
    int pnp_rd_port;


    if ((archsw.arch_isainb == ((void*)0)) || (archsw.arch_isaoutb == ((void*)0)))
 return;





    if ((isapnp_readport > 0) &&
 (((isapnp_readport < 0x203) ||
   (isapnp_readport > 0x3ff) ||
   (isapnp_readport & 0x3) != 0x3)))

 isapnp_readport = 0;

    if (isapnp_readport < 0) {

 return;

    } else if (isapnp_readport > 0) {

 isapnp_isolation_protocol();

    } else {

 for (pnp_rd_port = 0x80; pnp_rd_port < 0xff; pnp_rd_port += 0x10) {

     isapnp_readport = (pnp_rd_port << 2) | 0x3;
     if (isapnp_isolation_protocol() > 0)
  break;
 }
    }
}
