
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_memory_data {size_t size; size_t* client_size; void* buff; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ENOMEM ;
 int archive_set_error (struct archive*,int ,char*) ;
 int archive_write_open (struct archive*,struct write_memory_data*,int ,int ,int ) ;
 scalar_t__ calloc (int,int) ;
 int memory_write ;
 int memory_write_close ;
 int memory_write_open ;

int
archive_write_open_memory(struct archive *a, void *buff, size_t buffSize, size_t *used)
{
 struct write_memory_data *mine;

 mine = (struct write_memory_data *)calloc(1, sizeof(*mine));
 if (mine == ((void*)0)) {
  archive_set_error(a, ENOMEM, "No memory");
  return (ARCHIVE_FATAL);
 }
 mine->buff = buff;
 mine->size = buffSize;
 mine->client_size = used;
 return (archive_write_open(a, mine,
      memory_write_open, memory_write, memory_write_close));
}
