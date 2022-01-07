
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {struct session_state* state; } ;
struct session_state {int set_interactive_called; int interactive_mode; int connection_in; } ;


 int set_nodelay (int ) ;
 int ssh_packet_connection_is_on_socket (struct ssh*) ;
 int ssh_packet_set_tos (struct ssh*,int) ;

void
ssh_packet_set_interactive(struct ssh *ssh, int interactive, int qos_interactive, int qos_bulk)
{
 struct session_state *state = ssh->state;

 if (state->set_interactive_called)
  return;
 state->set_interactive_called = 1;


 state->interactive_mode = interactive;


 if (!ssh_packet_connection_is_on_socket(ssh))
  return;
 set_nodelay(state->connection_in);
 ssh_packet_set_tos(ssh, interactive ? qos_interactive :
     qos_bulk);
}
