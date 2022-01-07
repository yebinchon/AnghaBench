
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int outgoing_packet; } ;
typedef int EC_POINT ;
typedef int EC_GROUP ;


 int sshbuf_put_ec (int ,int const*,int const*) ;

int
sshpkt_put_ec(struct ssh *ssh, const EC_POINT *v, const EC_GROUP *g)
{
 return sshbuf_put_ec(ssh->state->outgoing_packet, v, g);
}
