
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtree {scalar_t__ fd; void* buff; int buffsize; scalar_t__ offset; scalar_t__ cur_size; } ;
struct archive_read {int archive; TYPE_1__* format; } ;
typedef size_t ssize_t ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {scalar_t__ data; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int ENOMEM ;
 int archive_set_error (int *,int ,char*) ;
 int errno ;
 void* malloc (int) ;
 size_t read (scalar_t__,void*,size_t) ;

__attribute__((used)) static int
read_data(struct archive_read *a, const void **buff, size_t *size,
    int64_t *offset)
{
 size_t bytes_to_read;
 ssize_t bytes_read;
 struct mtree *mtree;

 mtree = (struct mtree *)(a->format->data);
 if (mtree->fd < 0) {
  *buff = ((void*)0);
  *offset = 0;
  *size = 0;
  return (ARCHIVE_EOF);
 }
 if (mtree->buff == ((void*)0)) {
  mtree->buffsize = 64 * 1024;
  mtree->buff = malloc(mtree->buffsize);
  if (mtree->buff == ((void*)0)) {
   archive_set_error(&a->archive, ENOMEM,
       "Can't allocate memory");
   return (ARCHIVE_FATAL);
  }
 }

 *buff = mtree->buff;
 *offset = mtree->offset;
 if ((int64_t)mtree->buffsize > mtree->cur_size - mtree->offset)
  bytes_to_read = (size_t)(mtree->cur_size - mtree->offset);
 else
  bytes_to_read = mtree->buffsize;
 bytes_read = read(mtree->fd, mtree->buff, bytes_to_read);
 if (bytes_read < 0) {
  archive_set_error(&a->archive, errno, "Can't read");
  return (ARCHIVE_WARN);
 }
 if (bytes_read == 0) {
  *size = 0;
  return (ARCHIVE_EOF);
 }
 mtree->offset += bytes_read;
 *size = bytes_read;
 return (ARCHIVE_OK);
}
