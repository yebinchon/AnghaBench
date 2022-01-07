
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int u8; } ;
typedef TYPE_1__ io_buf ;
struct TYPE_8__ {scalar_t__ dest_pending_sparse; int dest_name; int dest_fd; scalar_t__ dest_try_sparse; } ;
typedef TYPE_2__ file_pair ;


 size_t IO_BUFFER_SIZE ;
 int SEEK_CUR ;
 int _ (char*) ;
 int assert (int) ;
 int errno ;
 int io_write_buf (TYPE_2__*,int ,size_t) ;
 scalar_t__ is_sparse (TYPE_1__ const*) ;
 int lseek (int ,scalar_t__,int ) ;
 int message_error (int ,int ,int ) ;
 int strerror (int ) ;

extern bool
io_write(file_pair *pair, const io_buf *buf, size_t size)
{
 assert(size <= IO_BUFFER_SIZE);

 if (pair->dest_try_sparse) {
  if (size == IO_BUFFER_SIZE) {
   if (is_sparse(buf)) {
    pair->dest_pending_sparse += size;
    return 0;
   }
  } else if (size == 0) {
   return 0;
  }



  if (pair->dest_pending_sparse > 0) {
   if (lseek(pair->dest_fd, pair->dest_pending_sparse,
     SEEK_CUR) == -1) {
    message_error(_("%s: Seeking failed when "
      "trying to create a sparse "
      "file: %s"), pair->dest_name,
      strerror(errno));
    return 1;
   }

   pair->dest_pending_sparse = 0;
  }
 }

 return io_write_buf(pair, buf->u8, size);
}
