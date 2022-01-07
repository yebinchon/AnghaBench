
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {scalar_t__ tv_sec; } ;
struct tac_msg {int seq_no; int length; int flags; } ;
struct tac_handle {int last_seq_no; size_t cur_server; scalar_t__ fd; TYPE_1__* servers; scalar_t__ single_connect; struct tac_msg request; } ;
typedef int fd_set ;
struct TYPE_2__ {scalar_t__ timeout; } ;


 scalar_t__ EAGAIN ;
 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 int HDRSIZE ;
 int TAC_SINGLE_CONNECT ;
 int crypt_msg (struct tac_handle*,struct tac_msg*) ;
 scalar_t__ errno ;
 int establish_connection (struct tac_handle*) ;
 int gen_session_id (struct tac_msg*) ;
 int generr (struct tac_handle*,char*,...) ;
 int gettimeofday (struct timeval*,int *) ;
 int ntohl (int ) ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;
 int strerror (scalar_t__) ;
 int timersub (struct timeval*,struct timeval*,struct timeval*) ;
 int write (scalar_t__,char*,int) ;

__attribute__((used)) static int
send_msg(struct tac_handle *h)
{
 struct timeval deadline;
 struct tac_msg *msg;
 char *ptr;
 int len;

 if (h->last_seq_no & 1) {
  generr(h, "Attempt to send message out of sequence");
  return -1;
 }

 if (establish_connection(h) == -1)
  return -1;

 msg = &h->request;
 msg->seq_no = ++h->last_seq_no;
 if (msg->seq_no == 1)
  gen_session_id(msg);
 crypt_msg(h, msg);

 if (h->single_connect)
  msg->flags |= TAC_SINGLE_CONNECT;
 else
  msg->flags &= ~TAC_SINGLE_CONNECT;
 gettimeofday(&deadline, ((void*)0));
 deadline.tv_sec += h->servers[h->cur_server].timeout;
 len = HDRSIZE + ntohl(msg->length);
 ptr = (char *)msg;
 while (len > 0) {
  int n;

  n = write(h->fd, ptr, len);
  if (n == -1) {
   struct timeval tv;
   int nfds;

   if (errno != EAGAIN) {
    generr(h, "Network write error: %s",
        strerror(errno));
    return -1;
   }


   gettimeofday(&tv, ((void*)0));
   timersub(&deadline, &tv, &tv);
   if (tv.tv_sec >= 0) {
    fd_set wfds;

    FD_ZERO(&wfds);
    FD_SET(h->fd, &wfds);
    nfds =
        select(h->fd + 1, ((void*)0), &wfds, ((void*)0), &tv);
    if (nfds == -1) {
     generr(h, "select: %s",
         strerror(errno));
     return -1;
    }
   } else
    nfds = 0;
   if (nfds == 0) {
    generr(h, "Network write timed out");
    return -1;
   }
  } else {
   ptr += n;
   len -= n;
  }
 }
 return 0;
}
