
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ssize_t ;
typedef int io_wait_ret ;
struct TYPE_6__ {int * u8; } ;
typedef TYPE_1__ io_buf ;
struct TYPE_7__ {int src_eof; int src_name; int src_fd; } ;
typedef TYPE_2__ file_pair ;


 scalar_t__ EINTR ;



 scalar_t__ IS_EAGAIN_OR_EWOULDBLOCK (scalar_t__) ;
 size_t SIZE_MAX ;
 size_t SSIZE_MAX ;
 int _ (char*) ;
 int assert (int) ;
 scalar_t__ errno ;
 int io_wait (TYPE_2__*,int ,int) ;
 int message_bug () ;
 int message_error (int ,int ,int ) ;
 int mytime_get_flush_timeout () ;
 int read (int ,int *,size_t) ;
 int strerror (scalar_t__) ;
 scalar_t__ user_abort ;

extern size_t
io_read(file_pair *pair, io_buf *buf_union, size_t size)
{

 assert(size < SSIZE_MAX);

 uint8_t *buf = buf_union->u8;
 size_t left = size;

 while (left > 0) {
  const ssize_t amount = read(pair->src_fd, buf, left);

  if (amount == 0) {
   pair->src_eof = 1;
   break;
  }

  if (amount == -1) {
   if (errno == EINTR) {
    if (user_abort)
     return SIZE_MAX;

    continue;
   }


   if (IS_EAGAIN_OR_EWOULDBLOCK(errno)) {
    const io_wait_ret ret = io_wait(pair,
      mytime_get_flush_timeout(),
      1);
    switch (ret) {
    case 129:
     continue;

    case 130:
     return SIZE_MAX;

    case 128:
     return size - left;

    default:
     message_bug();
    }
   }


   message_error(_("%s: Read error: %s"),
     pair->src_name, strerror(errno));

   return SIZE_MAX;
  }

  buf += (size_t)(amount);
  left -= (size_t)(amount);
 }

 return size - left;
}
