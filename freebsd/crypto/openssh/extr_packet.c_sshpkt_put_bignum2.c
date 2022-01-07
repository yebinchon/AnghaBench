
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int outgoing_packet; } ;
typedef int BIGNUM ;


 int sshbuf_put_bignum2 (int ,int const*) ;

int
sshpkt_put_bignum2(struct ssh *ssh, const BIGNUM *v)
{
 return sshbuf_put_bignum2(ssh->state->outgoing_packet, v);
}
