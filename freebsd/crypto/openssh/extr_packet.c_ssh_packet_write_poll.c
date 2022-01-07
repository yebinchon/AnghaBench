
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {struct session_state* state; } ;
struct session_state {int output; int connection_out; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ EWOULDBLOCK ;
 int SSH_ERR_CONN_CLOSED ;
 int SSH_ERR_SYSTEM_ERROR ;
 scalar_t__ errno ;
 int sshbuf_consume (int ,int) ;
 int sshbuf_len (int ) ;
 int sshbuf_ptr (int ) ;
 int write (int ,int ,int) ;

int
ssh_packet_write_poll(struct ssh *ssh)
{
 struct session_state *state = ssh->state;
 int len = sshbuf_len(state->output);
 int r;

 if (len > 0) {
  len = write(state->connection_out,
      sshbuf_ptr(state->output), len);
  if (len == -1) {
   if (errno == EINTR || errno == EAGAIN ||
       errno == EWOULDBLOCK)
    return 0;
   return SSH_ERR_SYSTEM_ERROR;
  }
  if (len == 0)
   return SSH_ERR_CONN_CLOSED;
  if ((r = sshbuf_consume(state->output, len)) != 0)
   return r;
 }
 return 0;
}
