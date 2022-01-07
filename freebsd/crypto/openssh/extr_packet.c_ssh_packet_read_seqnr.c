
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef scalar_t__ u_char ;
struct timeval {int dummy; } ;
struct ssh {struct session_state* state; } ;
struct session_state {int packet_timeout_ms; scalar_t__ connection_in; } ;
typedef int fd_set ;
typedef int fd_mask ;
typedef int buf ;


 int DBG (int ) ;
 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ EWOULDBLOCK ;
 int FD_SET (scalar_t__,int *) ;
 int NFDBITS ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_CONN_CLOSED ;
 int SSH_ERR_CONN_TIMEOUT ;
 int SSH_ERR_SYSTEM_ERROR ;
 scalar_t__ SSH_MSG_NONE ;
 int * calloc (int,int) ;
 int debug (char*) ;
 scalar_t__ errno ;
 int free (int *) ;
 int howmany (scalar_t__,int ) ;
 int memset (int *,int ,int) ;
 int monotime_tv (struct timeval*) ;
 int ms_subtract_diff (struct timeval*,int*) ;
 int ms_to_timeval (struct timeval*,int) ;
 int read (scalar_t__,char*,int) ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;
 int ssh_packet_process_incoming (struct ssh*,char*,int) ;
 int ssh_packet_read_poll_seqnr (struct ssh*,scalar_t__*,int *) ;
 int ssh_packet_write_wait (struct ssh*) ;

int
ssh_packet_read_seqnr(struct ssh *ssh, u_char *typep, u_int32_t *seqnr_p)
{
 struct session_state *state = ssh->state;
 int len, r, ms_remain;
 fd_set *setp;
 char buf[8192];
 struct timeval timeout, start, *timeoutp = ((void*)0);

 DBG(debug("packet_read()"));

 setp = calloc(howmany(state->connection_in + 1,
     NFDBITS), sizeof(fd_mask));
 if (setp == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;





 if ((r = ssh_packet_write_wait(ssh)) != 0)
  goto out;


 for (;;) {

  r = ssh_packet_read_poll_seqnr(ssh, typep, seqnr_p);
  if (r != 0)
   break;

  if (*typep != SSH_MSG_NONE)
   break;




  memset(setp, 0, howmany(state->connection_in + 1,
      NFDBITS) * sizeof(fd_mask));
  FD_SET(state->connection_in, setp);

  if (state->packet_timeout_ms > 0) {
   ms_remain = state->packet_timeout_ms;
   timeoutp = &timeout;
  }

  for (;;) {
   if (state->packet_timeout_ms != -1) {
    ms_to_timeval(&timeout, ms_remain);
    monotime_tv(&start);
   }
   if ((r = select(state->connection_in + 1, setp,
       ((void*)0), ((void*)0), timeoutp)) >= 0)
    break;
   if (errno != EAGAIN && errno != EINTR &&
       errno != EWOULDBLOCK) {
    r = SSH_ERR_SYSTEM_ERROR;
    goto out;
   }
   if (state->packet_timeout_ms == -1)
    continue;
   ms_subtract_diff(&start, &ms_remain);
   if (ms_remain <= 0) {
    r = 0;
    break;
   }
  }
  if (r == 0) {
   r = SSH_ERR_CONN_TIMEOUT;
   goto out;
  }

  len = read(state->connection_in, buf, sizeof(buf));
  if (len == 0) {
   r = SSH_ERR_CONN_CLOSED;
   goto out;
  }
  if (len < 0) {
   r = SSH_ERR_SYSTEM_ERROR;
   goto out;
  }


  if ((r = ssh_packet_process_incoming(ssh, buf, len)) != 0)
   goto out;
 }
 out:
 free(setp);
 return r;
}
