
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct ssh {struct session_state* state; } ;
struct session_state {int packet_timeout_ms; scalar_t__ connection_out; } ;
typedef int fd_set ;
typedef int fd_mask ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ EWOULDBLOCK ;
 int FD_SET (scalar_t__,int *) ;
 int NFDBITS ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_CONN_TIMEOUT ;
 int * calloc (int,int) ;
 scalar_t__ errno ;
 int free (int *) ;
 int howmany (scalar_t__,int ) ;
 int memset (int *,int ,int) ;
 int monotime_tv (struct timeval*) ;
 int ms_subtract_diff (struct timeval*,int*) ;
 int ms_to_timeval (struct timeval*,int) ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;
 scalar_t__ ssh_packet_have_data_to_write (struct ssh*) ;
 int ssh_packet_write_poll (struct ssh*) ;

int
ssh_packet_write_wait(struct ssh *ssh)
{
 fd_set *setp;
 int ret, r, ms_remain = 0;
 struct timeval start, timeout, *timeoutp = ((void*)0);
 struct session_state *state = ssh->state;

 setp = calloc(howmany(state->connection_out + 1,
     NFDBITS), sizeof(fd_mask));
 if (setp == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 if ((r = ssh_packet_write_poll(ssh)) != 0) {
  free(setp);
  return r;
 }
 while (ssh_packet_have_data_to_write(ssh)) {
  memset(setp, 0, howmany(state->connection_out + 1,
      NFDBITS) * sizeof(fd_mask));
  FD_SET(state->connection_out, setp);

  if (state->packet_timeout_ms > 0) {
   ms_remain = state->packet_timeout_ms;
   timeoutp = &timeout;
  }
  for (;;) {
   if (state->packet_timeout_ms != -1) {
    ms_to_timeval(&timeout, ms_remain);
    monotime_tv(&start);
   }
   if ((ret = select(state->connection_out + 1,
       ((void*)0), setp, ((void*)0), timeoutp)) >= 0)
    break;
   if (errno != EAGAIN && errno != EINTR &&
       errno != EWOULDBLOCK)
    break;
   if (state->packet_timeout_ms == -1)
    continue;
   ms_subtract_diff(&start, &ms_remain);
   if (ms_remain <= 0) {
    ret = 0;
    break;
   }
  }
  if (ret == 0) {
   free(setp);
   return SSH_ERR_CONN_TIMEOUT;
  }
  if ((r = ssh_packet_write_poll(ssh)) != 0) {
   free(setp);
   return r;
  }
 }
 free(setp);
 return 0;
}
