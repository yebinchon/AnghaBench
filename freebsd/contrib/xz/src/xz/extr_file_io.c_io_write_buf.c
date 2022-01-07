
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ssize_t ;
struct TYPE_4__ {int dest_name; int dest_fd; } ;
typedef TYPE_1__ file_pair ;


 scalar_t__ EINTR ;
 scalar_t__ EPIPE ;
 scalar_t__ IO_WAIT_MORE ;
 scalar_t__ IS_EAGAIN_OR_EWOULDBLOCK (scalar_t__) ;
 size_t SSIZE_MAX ;
 int _ (char*) ;
 int assert (int) ;
 scalar_t__ errno ;
 scalar_t__ io_wait (TYPE_1__*,int,int) ;
 int message_error (int ,int ,int ) ;
 int strerror (scalar_t__) ;
 scalar_t__ user_abort ;
 int write (int ,int const*,size_t) ;

__attribute__((used)) static bool
io_write_buf(file_pair *pair, const uint8_t *buf, size_t size)
{
 assert(size < SSIZE_MAX);

 while (size > 0) {
  const ssize_t amount = write(pair->dest_fd, buf, size);
  if (amount == -1) {
   if (errno == EINTR) {
    if (user_abort)
     return 1;

    continue;
   }


   if (IS_EAGAIN_OR_EWOULDBLOCK(errno)) {
    if (io_wait(pair, -1, 0) == IO_WAIT_MORE)
     continue;

    return 1;
   }
   if (errno != EPIPE)
    message_error(_("%s: Write error: %s"),
     pair->dest_name, strerror(errno));

   return 1;
  }

  buf += (size_t)(amount);
  size -= (size_t)(amount);
 }

 return 0;
}
