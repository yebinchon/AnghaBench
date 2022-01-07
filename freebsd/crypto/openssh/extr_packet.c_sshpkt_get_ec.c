
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int incoming_packet; } ;
typedef int EC_POINT ;
typedef int EC_GROUP ;


 int sshbuf_get_ec (int ,int *,int const*) ;

int
sshpkt_get_ec(struct ssh *ssh, EC_POINT *v, const EC_GROUP *g)
{
 return sshbuf_get_ec(ssh->state->incoming_packet, v, g);
}
