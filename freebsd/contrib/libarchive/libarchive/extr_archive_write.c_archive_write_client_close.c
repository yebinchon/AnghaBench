
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_filter {int * close; scalar_t__ data; scalar_t__ archive; } ;
struct archive_write {int bytes_in_last_block; int bytes_per_block; int (* client_writer ) (int *,int *,scalar_t__,int) ;scalar_t__ passphrase; int * client_data; int archive; int (* client_closer ) (int *,int *) ;} ;
struct archive_none {scalar_t__ next; scalar_t__ buffer; int buffer_size; int avail; } ;
typedef int ssize_t ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int free (struct archive_none*) ;
 int memset (scalar_t__,int ,int) ;
 int strlen (scalar_t__) ;
 int stub1 (int *,int *,scalar_t__,int) ;
 int stub2 (int *,int *) ;

__attribute__((used)) static int
archive_write_client_close(struct archive_write_filter *f)
{
 struct archive_write *a = (struct archive_write *)f->archive;
 struct archive_none *state = (struct archive_none *)f->data;
 ssize_t block_length;
 ssize_t target_block_length;
 ssize_t bytes_written;
 int ret = ARCHIVE_OK;


 if (state->next != state->buffer) {
  block_length = state->buffer_size - state->avail;


  if (a->bytes_in_last_block <= 0)

   target_block_length = a->bytes_per_block;
  else

   target_block_length = a->bytes_in_last_block *
       ( (block_length + a->bytes_in_last_block - 1) /
           a->bytes_in_last_block);
  if (target_block_length > a->bytes_per_block)
   target_block_length = a->bytes_per_block;
  if (block_length < target_block_length) {
   memset(state->next, 0,
       target_block_length - block_length);
   block_length = target_block_length;
  }
  bytes_written = (a->client_writer)(&a->archive,
      a->client_data, state->buffer, block_length);
  ret = bytes_written <= 0 ? ARCHIVE_FATAL : ARCHIVE_OK;
 }
 if (a->client_closer)
  (*a->client_closer)(&a->archive, a->client_data);
 free(state->buffer);
 free(state);

 f->close = ((void*)0);
 a->client_data = ((void*)0);

 if (a->passphrase != ((void*)0)) {
  memset(a->passphrase, 0, strlen(a->passphrase));
  free(a->passphrase);
  a->passphrase = ((void*)0);
 }
 return (ret);
}
