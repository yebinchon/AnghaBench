
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {scalar_t__ connection_in; scalar_t__ connection_out; } ;


 int set_nonblock (scalar_t__) ;

void
ssh_packet_set_nonblocking(struct ssh *ssh)
{

 set_nonblock(ssh->state->connection_in);

 if (ssh->state->connection_out != ssh->state->connection_in)
  set_nonblock(ssh->state->connection_out);
}
