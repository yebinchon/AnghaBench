
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct read_memory_data {unsigned char const* start; unsigned char const* p; size_t read_size; int copy_buff_offset; size_t copy_buff_size; struct read_memory_data* copy_buff; int end; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ENOMEM ;
 int __LA_FALLTHROUGH ;
 int archive_read_open1 (struct archive*) ;
 int archive_read_set_callback_data (struct archive*,struct read_memory_data*) ;
 int archive_read_set_close_callback (struct archive*,int ) ;
 int archive_read_set_open_callback (struct archive*,int ) ;
 int archive_read_set_read_callback (struct archive*,int ) ;
 int archive_read_set_seek_callback (struct archive*,int ) ;
 int archive_read_set_skip_callback (struct archive*,int ) ;
 int archive_set_error (struct archive*,int ,char*) ;
 void* malloc (int) ;
 int memory_read ;
 int memory_read_close ;
 int memory_read_open ;
 int memory_read_seek ;
 int memory_read_skip ;
 int memset (struct read_memory_data*,int,int) ;

__attribute__((used)) static int
read_open_memory_internal(struct archive *a, const void *buff,
    size_t size, size_t read_size, int level)
{
 struct read_memory_data *mine = ((void*)0);

 switch (level) {
 case 3:
  archive_read_set_seek_callback(a, memory_read_seek);
  __LA_FALLTHROUGH;
 case 2:
  archive_read_set_open_callback(a, memory_read_open);
  archive_read_set_skip_callback(a, memory_read_skip);
  __LA_FALLTHROUGH;
 case 1:
  mine = malloc(sizeof(*mine));
  if (mine == ((void*)0)) {
   archive_set_error(a, ENOMEM, "No memory");
   return (ARCHIVE_FATAL);
  }
  memset(mine, 0, sizeof(*mine));
  mine->start = mine->p = (const unsigned char *)buff;
  mine->end = mine->start + size;
  mine->read_size = read_size;
  mine->copy_buff_offset = 32;
  mine->copy_buff_size = read_size + mine->copy_buff_offset * 2;
  mine->copy_buff = malloc(mine->copy_buff_size);
  memset(mine->copy_buff, 0xA5, mine->copy_buff_size);

  archive_read_set_read_callback(a, memory_read);
  archive_read_set_close_callback(a, memory_read_close);
  archive_read_set_callback_data(a, mine);
 }
 return archive_read_open1(a);
}
