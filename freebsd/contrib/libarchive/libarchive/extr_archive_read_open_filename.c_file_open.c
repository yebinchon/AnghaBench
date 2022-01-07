
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int const wchar_t ;
struct stat {int st_mode; int st_rdev; int st_ino; int st_dev; } ;
struct TYPE_3__ {char* m; int const* w; } ;
struct read_file_data {scalar_t__ filename_type; size_t block_size; int fd; int use_lseek; int st_mode; void* buffer; TYPE_1__ filename; } ;
typedef scalar_t__ partinfo ;
typedef scalar_t__ disklabel ;
struct archive {int dummy; } ;
typedef scalar_t__ off_t ;
struct TYPE_4__ {scalar_t__ p_size; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int DIOCGDINFO ;
 int DIOCGMEDIASIZE ;
 int DIOCGPART ;
 size_t DISKPART (int ) ;
 scalar_t__ ENOENT ;
 int ENOMEM ;
 scalar_t__ FNT_MBS ;
 scalar_t__ FNT_STDIN ;
 scalar_t__ FNT_WCS ;
 int O_BINARY ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int SEEK_CUR ;
 int SEEK_END ;
 int SEEK_SET ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int __archive_ensure_cloexec_flag (int) ;
 int const* __la_win_permissive_name_w (int const*) ;
 int _wopen (int const*,int) ;
 int archive_clear_error (struct archive*) ;
 int archive_read_extract_set_skip_file (struct archive*,int ,int ) ;
 int archive_set_error (struct archive*,scalar_t__,char*,...) ;
 int close (int) ;
 scalar_t__ errno ;
 int free (int const*) ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ ioctl (int,int ,scalar_t__*) ;
 scalar_t__ lseek (int,int ,int ) ;
 void* malloc (size_t) ;
 int open (char const*,int) ;
 int setmode (int ,int) ;

__attribute__((used)) static int
file_open(struct archive *a, void *client_data)
{
 struct stat st;
 struct read_file_data *mine = (struct read_file_data *)client_data;
 void *buffer;
 const char *filename = ((void*)0);
 const wchar_t *wfilename = ((void*)0);
 int fd = -1;
 int is_disk_like = 0;
 archive_clear_error(a);
 if (mine->filename_type == FNT_STDIN) {
  fd = 0;



  filename = "";
 } else if (mine->filename_type == FNT_MBS) {
  filename = mine->filename.m;
  fd = open(filename, O_RDONLY | O_BINARY | O_CLOEXEC);
  __archive_ensure_cloexec_flag(fd);
  if (fd < 0) {
   archive_set_error(a, errno,
       "Failed to open '%s'", filename);
   return (ARCHIVE_FATAL);
  }
 } else {
  archive_set_error(a, ARCHIVE_ERRNO_MISC,
      "Unexpedted operation in archive_read_open_filename");
  goto fail;

 }
 if (fstat(fd, &st) != 0) {
  if (mine->filename_type == FNT_WCS)
   archive_set_error(a, errno, "Can't stat '%S'",
       wfilename);
  else
   archive_set_error(a, errno, "Can't stat '%s'",
       filename);
  goto fail;
 }
 if (S_ISREG(st.st_mode)) {

  archive_read_extract_set_skip_file(a, st.st_dev, st.st_ino);

  is_disk_like = 1;
 }
 else if (S_ISBLK(st.st_mode) &&
     lseek(fd, 0, SEEK_CUR) == 0 &&
     lseek(fd, 0, SEEK_SET) == 0 &&
     lseek(fd, 0, SEEK_END) > 0 &&
     lseek(fd, 0, SEEK_SET) == 0) {
  is_disk_like = 1;
 }





 if (is_disk_like) {
  size_t new_block_size = 64 * 1024;
  while (new_block_size < mine->block_size
      && new_block_size < 64 * 1024 * 1024)
   new_block_size *= 2;
  mine->block_size = new_block_size;
 }
 buffer = malloc(mine->block_size);
 if (buffer == ((void*)0)) {
  archive_set_error(a, ENOMEM, "No memory");
  goto fail;
 }
 mine->buffer = buffer;
 mine->fd = fd;

 mine->st_mode = st.st_mode;


 if (is_disk_like)
  mine->use_lseek = 1;

 return (ARCHIVE_OK);
fail:




 if (fd != -1 && fd != 0)
  close(fd);
 return (ARCHIVE_FATAL);
}
