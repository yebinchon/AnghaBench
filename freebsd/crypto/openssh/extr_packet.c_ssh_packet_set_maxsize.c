
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ssh {struct session_state* state; } ;
struct session_state {int set_maxsize_called; int max_packet_size; } ;


 int debug (char*,int) ;
 int logit (char*,int,...) ;

int
ssh_packet_set_maxsize(struct ssh *ssh, u_int s)
{
 struct session_state *state = ssh->state;

 if (state->set_maxsize_called) {
  logit("packet_set_maxsize: called twice: old %d new %d",
      state->max_packet_size, s);
  return -1;
 }
 if (s < 4 * 1024 || s > 1024 * 1024) {
  logit("packet_set_maxsize: bad size %d", s);
  return -1;
 }
 state->set_maxsize_called = 1;
 debug("packet_set_maxsize: setting to %d", s);
 state->max_packet_size = s;
 return s;
}
