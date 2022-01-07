
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pollfd {scalar_t__ revents; void* events; int fd; } ;
typedef int io_wait_ret ;
struct TYPE_3__ {int dest_name; int src_name; int dest_fd; int src_fd; } ;
typedef TYPE_1__ file_pair ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int IO_WAIT_ERROR ;
 int IO_WAIT_MORE ;
 int IO_WAIT_TIMEOUT ;
 void* POLLIN ;
 void* POLLOUT ;
 int _ (char*) ;
 int assert (int) ;
 scalar_t__ errno ;
 int flush_needed ;
 int message_error (int ,int ,int ) ;
 scalar_t__ opt_flush_timeout ;
 int poll (struct pollfd*,int,int) ;
 int strerror (scalar_t__) ;
 scalar_t__ user_abort ;
 int * user_abort_pipe ;

__attribute__((used)) static io_wait_ret
io_wait(file_pair *pair, int timeout, bool is_reading)
{
 struct pollfd pfd[2];

 if (is_reading) {
  pfd[0].fd = pair->src_fd;
  pfd[0].events = POLLIN;
 } else {
  pfd[0].fd = pair->dest_fd;
  pfd[0].events = POLLOUT;
 }

 pfd[1].fd = user_abort_pipe[0];
 pfd[1].events = POLLIN;

 while (1) {
  const int ret = poll(pfd, 2, timeout);

  if (user_abort)
   return IO_WAIT_ERROR;

  if (ret == -1) {
   if (errno == EINTR || errno == EAGAIN)
    continue;

   message_error(_("%s: poll() failed: %s"),
     is_reading ? pair->src_name
      : pair->dest_name,
     strerror(errno));
   return IO_WAIT_ERROR;
  }

  if (ret == 0) {
   assert(opt_flush_timeout != 0);
   flush_needed = 1;
   return IO_WAIT_TIMEOUT;
  }

  if (pfd[0].revents != 0)
   return IO_WAIT_MORE;
 }
}
