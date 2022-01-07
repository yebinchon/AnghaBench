
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct read_memory_data {unsigned char const* start; unsigned char const* p; unsigned char const* end; size_t read_size; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ENOMEM ;
 int archive_read_open1 (struct archive*) ;
 int archive_read_set_callback_data (struct archive*,struct read_memory_data*) ;
 int archive_read_set_close_callback (struct archive*,int ) ;
 int archive_read_set_open_callback (struct archive*,int ) ;
 int archive_read_set_read_callback (struct archive*,int ) ;
 int archive_read_set_seek_callback (struct archive*,int ) ;
 int archive_read_set_skip_callback (struct archive*,int ) ;
 int archive_set_error (struct archive*,int ,char*) ;
 scalar_t__ calloc (int,int) ;
 int memory_read ;
 int memory_read_close ;
 int memory_read_open ;
 int memory_read_seek ;
 int memory_read_skip ;

int
archive_read_open_memory2(struct archive *a, const void *buff,
    size_t size, size_t read_size)
{
 struct read_memory_data *mine;

 mine = (struct read_memory_data *)calloc(1, sizeof(*mine));
 if (mine == ((void*)0)) {
  archive_set_error(a, ENOMEM, "No memory");
  return (ARCHIVE_FATAL);
 }
 mine->start = mine->p = (const unsigned char *)buff;
 mine->end = mine->start + size;
 mine->read_size = read_size;
 archive_read_set_open_callback(a, memory_read_open);
 archive_read_set_read_callback(a, memory_read);
 archive_read_set_seek_callback(a, memory_read_seek);
 archive_read_set_skip_callback(a, memory_read_skip);
 archive_read_set_close_callback(a, memory_read_close);
 archive_read_set_callback_data(a, mine);
 return (archive_read_open1(a));
}
