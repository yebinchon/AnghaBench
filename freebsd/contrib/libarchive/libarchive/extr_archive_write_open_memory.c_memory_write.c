
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_memory_data {scalar_t__ used; scalar_t__ size; scalar_t__ buff; scalar_t__* client_size; } ;
struct archive {int dummy; } ;
typedef size_t ssize_t ;


 size_t ARCHIVE_FATAL ;
 int ENOMEM ;
 int archive_set_error (struct archive*,int ,char*) ;
 int memcpy (scalar_t__,void const*,size_t) ;

__attribute__((used)) static ssize_t
memory_write(struct archive *a, void *client_data, const void *buff, size_t length)
{
 struct write_memory_data *mine;
 mine = client_data;

 if (mine->used + length > mine->size) {
  archive_set_error(a, ENOMEM, "Buffer exhausted");
  return (ARCHIVE_FATAL);
 }
 memcpy(mine->buff + mine->used, buff, length);
 mine->used += length;
 if (mine->client_size != ((void*)0))
  *mine->client_size = mine->used;
 return (length);
}
