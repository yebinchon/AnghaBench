
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int incoming_packet; } ;
typedef int BIGNUM ;


 int sshbuf_get_bignum2 (int ,int *) ;

int
sshpkt_get_bignum2(struct ssh *ssh, BIGNUM *v)
{
 return sshbuf_get_bignum2(ssh->state->incoming_packet, v);
}
