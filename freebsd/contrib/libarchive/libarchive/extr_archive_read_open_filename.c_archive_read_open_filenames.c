
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m; } ;
struct read_file_data {size_t block_size; int fd; int filename_type; scalar_t__ use_lseek; scalar_t__ st_mode; int * buffer; TYPE_1__ filename; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 scalar_t__ ARCHIVE_OK ;
 int ENOMEM ;
 int FNT_MBS ;
 int FNT_STDIN ;
 int archive_clear_error (struct archive*) ;
 scalar_t__ archive_read_append_callback_data (struct archive*,struct read_file_data*) ;
 int archive_read_open1 (struct archive*) ;
 int archive_read_set_close_callback (struct archive*,int ) ;
 int archive_read_set_open_callback (struct archive*,int ) ;
 int archive_read_set_read_callback (struct archive*,int ) ;
 int archive_read_set_seek_callback (struct archive*,int ) ;
 int archive_read_set_skip_callback (struct archive*,int ) ;
 int archive_read_set_switch_callback (struct archive*,int ) ;
 int archive_set_error (struct archive*,int ,char*) ;
 scalar_t__ calloc (int,scalar_t__) ;
 int file_close ;
 int file_open ;
 int file_read ;
 int file_seek ;
 int file_skip ;
 int file_switch ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

int
archive_read_open_filenames(struct archive *a, const char **filenames,
    size_t block_size)
{
 struct read_file_data *mine;
 const char *filename = ((void*)0);
 if (filenames)
  filename = *(filenames++);

 archive_clear_error(a);
 do
 {
  if (filename == ((void*)0))
   filename = "";
  mine = (struct read_file_data *)calloc(1,
   sizeof(*mine) + strlen(filename));
  if (mine == ((void*)0))
   goto no_memory;
  strcpy(mine->filename.m, filename);
  mine->block_size = block_size;
  mine->fd = -1;
  mine->buffer = ((void*)0);
  mine->st_mode = mine->use_lseek = 0;
  if (filename == ((void*)0) || filename[0] == '\0') {
   mine->filename_type = FNT_STDIN;
  } else
   mine->filename_type = FNT_MBS;
  if (archive_read_append_callback_data(a, mine) != (ARCHIVE_OK))
   return (ARCHIVE_FATAL);
  if (filenames == ((void*)0))
   break;
  filename = *(filenames++);
 } while (filename != ((void*)0) && filename[0] != '\0');
 archive_read_set_open_callback(a, file_open);
 archive_read_set_read_callback(a, file_read);
 archive_read_set_skip_callback(a, file_skip);
 archive_read_set_close_callback(a, file_close);
 archive_read_set_switch_callback(a, file_switch);
 archive_read_set_seek_callback(a, file_seek);

 return (archive_read_open1(a));
no_memory:
 archive_set_error(a, ENOMEM, "No memory");
 return (ARCHIVE_FATAL);
}
