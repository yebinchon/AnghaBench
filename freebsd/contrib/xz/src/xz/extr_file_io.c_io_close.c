
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_7__ {scalar_t__ dest_pending_sparse; int dest_fd; int dest_name; scalar_t__ dest_try_sparse; } ;
typedef TYPE_1__ file_pair ;


 int SEEK_CUR ;
 int STDOUT_FILENO ;
 int _ (char*) ;
 int errno ;
 scalar_t__ io_close_dest (TYPE_1__*,int) ;
 int io_close_src (TYPE_1__*,int) ;
 int io_copy_attrs (TYPE_1__*) ;
 scalar_t__ io_write_buf (TYPE_1__*,char const*,int) ;
 int lseek (int,scalar_t__,int ) ;
 int message_error (int ,int ,int ) ;
 int signals_block () ;
 int signals_unblock () ;
 int strerror (int ) ;

extern void
io_close(file_pair *pair, bool success)
{

 if (success && pair->dest_try_sparse
   && pair->dest_pending_sparse > 0) {







  if (lseek(pair->dest_fd, pair->dest_pending_sparse - 1,
    SEEK_CUR) == -1) {
   message_error(_("%s: Seeking failed when trying "
     "to create a sparse file: %s"),
     pair->dest_name, strerror(errno));
   success = 0;
  } else {
   const uint8_t zero[1] = { '\0' };
   if (io_write_buf(pair, zero, 1))
    success = 0;
  }
 }

 signals_block();



 if (success && pair->dest_fd != -1 && pair->dest_fd != STDOUT_FILENO)
  io_copy_attrs(pair);



 if (io_close_dest(pair, success))
  success = 0;




 io_close_src(pair, success);

 signals_unblock();

 return;
}
