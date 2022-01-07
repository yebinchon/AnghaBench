
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_3__ {int src_fd; } ;
typedef TYPE_1__ file_pair ;


 size_t IO_BUFFER_SIZE ;
 int SEEK_CUR ;
 int assert (int) ;
 int lseek (int ,int ,int ) ;

extern void
io_fix_src_pos(file_pair *pair, size_t rewind_size)
{
 assert(rewind_size <= IO_BUFFER_SIZE);

 if (rewind_size > 0) {


  (void)lseek(pair->src_fd, -(off_t)(rewind_size), SEEK_CUR);
 }

 return;
}
