
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int noatime; } ;
struct tree {int entry_eof; scalar_t__ entry_remaining_bytes; scalar_t__ entry_fd; int nlink; int flags; void* entry_buff; size_t entry_buff_size; scalar_t__ entry_total; TYPE_3__ restore_time; TYPE_2__* current_sparse; TYPE_1__* current_filesystem; } ;
struct TYPE_8__ {void* state; } ;
struct archive_read_disk {TYPE_4__ archive; struct tree* tree; } ;
struct archive {int dummy; } ;
typedef size_t ssize_t ;
typedef int off_t ;
typedef size_t int64_t ;
struct TYPE_6__ {size_t length; scalar_t__ offset; } ;
struct TYPE_5__ {int xfer_align; void* buff; size_t buff_size; int * allocation_ptr; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_READ_DISK_MAGIC ;
 int ARCHIVE_STATE_DATA ;
 void* ARCHIVE_STATE_FATAL ;
 scalar_t__ EPERM ;
 int O_BINARY ;
 int O_CLOEXEC ;
 int O_DIRECT ;
 int O_NOATIME ;
 int O_RDONLY ;
 int SEEK_SET ;
 int __archive_ensure_cloexec_flag (scalar_t__) ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_set_error (TYPE_4__*,scalar_t__,char*,...) ;
 int close_and_restore_time (scalar_t__,struct tree*,TYPE_3__*) ;
 scalar_t__ errno ;
 scalar_t__ lseek (scalar_t__,int ,int ) ;
 int needsRestoreTimes ;
 scalar_t__ open_on_current_dir (struct tree*,int ,int) ;
 size_t read (scalar_t__,void*,size_t) ;
 int setup_suitable_read_buffer (struct archive_read_disk*) ;
 int tree_current_access_path (struct tree*) ;
 int tree_current_path (struct tree*) ;
 int tree_enter_initial_dir (struct tree*) ;

__attribute__((used)) static int
_archive_read_data_block(struct archive *_a, const void **buff,
    size_t *size, int64_t *offset)
{
 struct archive_read_disk *a = (struct archive_read_disk *)_a;
 struct tree *t = a->tree;
 int r;
 ssize_t bytes;
 size_t buffbytes;
 int empty_sparse_region = 0;

 archive_check_magic(_a, ARCHIVE_READ_DISK_MAGIC, ARCHIVE_STATE_DATA,
     "archive_read_data_block");

 if (t->entry_eof || t->entry_remaining_bytes <= 0) {
  r = ARCHIVE_EOF;
  goto abort_read_data;
 }




 if (t->entry_fd < 0) {
  int flags = O_RDONLY | O_BINARY | O_CLOEXEC;
   t->entry_fd = open_on_current_dir(t,
       tree_current_access_path(t), flags);
   __archive_ensure_cloexec_flag(t->entry_fd);
  if (t->entry_fd < 0) {
   archive_set_error(&a->archive, errno,
       "Couldn't open %s", tree_current_path(t));
   r = ARCHIVE_FAILED;
   tree_enter_initial_dir(t);
   goto abort_read_data;
  }
  tree_enter_initial_dir(t);
 }




 if (t->current_filesystem->allocation_ptr == ((void*)0)) {
  r = setup_suitable_read_buffer(a);
  if (r != ARCHIVE_OK) {
   a->archive.state = ARCHIVE_STATE_FATAL;
   goto abort_read_data;
  }
 }
 t->entry_buff = t->current_filesystem->buff;
 t->entry_buff_size = t->current_filesystem->buff_size;

 buffbytes = t->entry_buff_size;
 if ((int64_t)buffbytes > t->current_sparse->length)
  buffbytes = t->current_sparse->length;

 if (t->current_sparse->length == 0)
  empty_sparse_region = 1;





 if (t->current_sparse->offset > t->entry_total) {
  if (lseek(t->entry_fd,
      (off_t)t->current_sparse->offset, SEEK_SET) < 0) {
   archive_set_error(&a->archive, errno, "Seek error");
   r = ARCHIVE_FATAL;
   a->archive.state = ARCHIVE_STATE_FATAL;
   goto abort_read_data;
  }
  bytes = t->current_sparse->offset - t->entry_total;
  t->entry_remaining_bytes -= bytes;
  t->entry_total += bytes;
 }




 if (buffbytes > 0) {
  bytes = read(t->entry_fd, t->entry_buff, buffbytes);
  if (bytes < 0) {
   archive_set_error(&a->archive, errno, "Read error");
   r = ARCHIVE_FATAL;
   a->archive.state = ARCHIVE_STATE_FATAL;
   goto abort_read_data;
  }
 } else
  bytes = 0;




 if (bytes == 0 && !empty_sparse_region) {

  t->entry_eof = 1;
  r = ARCHIVE_EOF;
  goto abort_read_data;
 }
 *buff = t->entry_buff;
 *size = bytes;
 *offset = t->entry_total;
 t->entry_total += bytes;
 t->entry_remaining_bytes -= bytes;
 if (t->entry_remaining_bytes == 0) {

  close_and_restore_time(t->entry_fd, t, &t->restore_time);
  t->entry_fd = -1;
  t->entry_eof = 1;
 }
 t->current_sparse->offset += bytes;
 t->current_sparse->length -= bytes;
 if (t->current_sparse->length == 0 && !t->entry_eof)
  t->current_sparse++;
 return (ARCHIVE_OK);

abort_read_data:
 *buff = ((void*)0);
 *size = 0;
 *offset = t->entry_total;
 if (t->entry_fd >= 0) {

  close_and_restore_time(t->entry_fd, t, &t->restore_time);
  t->entry_fd = -1;
 }
 return (r);
}
