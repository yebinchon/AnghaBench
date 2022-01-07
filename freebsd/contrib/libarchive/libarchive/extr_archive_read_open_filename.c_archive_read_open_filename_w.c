
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_2__ {int m; int w; } ;
struct read_file_data {int fd; size_t block_size; TYPE_1__ filename; int filename_type; } ;
struct archive_string {int s; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 scalar_t__ ARCHIVE_OK ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOMEM ;
 int FNT_MBS ;
 int FNT_STDIN ;
 int FNT_WCS ;
 scalar_t__ archive_read_append_callback_data (struct archive*,struct read_file_data*) ;
 int archive_read_open1 (struct archive*) ;
 int archive_read_set_close_callback (struct archive*,int ) ;
 int archive_read_set_open_callback (struct archive*,int ) ;
 int archive_read_set_read_callback (struct archive*,int ) ;
 int archive_read_set_seek_callback (struct archive*,int ) ;
 int archive_read_set_skip_callback (struct archive*,int ) ;
 int archive_read_set_switch_callback (struct archive*,int ) ;
 int archive_set_error (struct archive*,scalar_t__,char*) ;
 scalar_t__ archive_string_append_from_wcs (struct archive_string*,int const*,int) ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;
 scalar_t__ calloc (int,int) ;
 scalar_t__ errno ;
 int file_close ;
 int file_open ;
 int file_read ;
 int file_seek ;
 int file_skip ;
 int file_switch ;
 int free (struct read_file_data*) ;
 int strcpy (int ,int ) ;
 int wcscpy (int ,int const*) ;
 int wcslen (int const*) ;

int
archive_read_open_filename_w(struct archive *a, const wchar_t *wfilename,
    size_t block_size)
{
 struct read_file_data *mine = (struct read_file_data *)calloc(1,
  sizeof(*mine) + wcslen(wfilename) * sizeof(wchar_t));
 if (!mine)
 {
  archive_set_error(a, ENOMEM, "No memory");
  return (ARCHIVE_FATAL);
 }
 mine->fd = -1;
 mine->block_size = block_size;

 if (wfilename == ((void*)0) || wfilename[0] == L'\0') {
  mine->filename_type = FNT_STDIN;
 } else {
  struct archive_string fn;

  archive_string_init(&fn);
  if (archive_string_append_from_wcs(&fn, wfilename,
      wcslen(wfilename)) != 0) {
   if (errno == ENOMEM)
    archive_set_error(a, errno,
        "Can't allocate memory");
   else
    archive_set_error(a, EINVAL,
        "Failed to convert a wide-character"
        " filename to a multi-byte filename");
   archive_string_free(&fn);
   free(mine);
   return (ARCHIVE_FATAL);
  }
  mine->filename_type = FNT_MBS;
  strcpy(mine->filename.m, fn.s);
  archive_string_free(&fn);

 }
 if (archive_read_append_callback_data(a, mine) != (ARCHIVE_OK))
  return (ARCHIVE_FATAL);
 archive_read_set_open_callback(a, file_open);
 archive_read_set_read_callback(a, file_read);
 archive_read_set_skip_callback(a, file_skip);
 archive_read_set_close_callback(a, file_close);
 archive_read_set_switch_callback(a, file_switch);
 archive_read_set_seek_callback(a, file_seek);

 return (archive_read_open1(a));
}
