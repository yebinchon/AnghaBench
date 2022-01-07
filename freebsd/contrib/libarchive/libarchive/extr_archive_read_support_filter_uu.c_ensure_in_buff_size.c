
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uudecode {size_t in_allocated; unsigned char* in_buff; int in_cnt; } ;
struct archive_read_filter {TYPE_1__* archive; } ;
struct TYPE_2__ {int archive; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ENOMEM ;
 int IN_BUFF_SIZE ;
 int archive_set_error (int *,int ,char*) ;
 int free (unsigned char*) ;
 unsigned char* malloc (size_t) ;
 int memmove (unsigned char*,unsigned char*,int ) ;

__attribute__((used)) static int
ensure_in_buff_size(struct archive_read_filter *self,
    struct uudecode *uudecode, size_t size)
{

 if (size > uudecode->in_allocated) {
  unsigned char *ptr;
  size_t newsize;





  newsize = uudecode->in_allocated;
  do {
   if (newsize < IN_BUFF_SIZE*32)
    newsize <<= 1;
   else
    newsize += IN_BUFF_SIZE;
  } while (size > newsize);

  ptr = malloc(newsize);
  if (ptr == ((void*)0)) {
   free(ptr);
   archive_set_error(&self->archive->archive,
       ENOMEM,
           "Can't allocate data for uudecode");
   return (ARCHIVE_FATAL);
  }

  if (uudecode->in_cnt)
   memmove(ptr, uudecode->in_buff, uudecode->in_cnt);

  free(uudecode->in_buff);
  uudecode->in_buff = ptr;
  uudecode->in_allocated = newsize;
 }
 return (ARCHIVE_OK);
}
