
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int max_packet_size; } ;



u_int
ssh_packet_get_maxsize(struct ssh *ssh)
{
 return ssh->state->max_packet_size;
}
