
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int extra_pad; } ;



int
sshpkt_add_padding(struct ssh *ssh, u_char pad)
{
 ssh->state->extra_pad = pad;
 return 0;
}
