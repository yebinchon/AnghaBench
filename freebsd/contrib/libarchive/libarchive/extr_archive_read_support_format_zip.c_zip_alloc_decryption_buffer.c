
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zip {size_t decrypted_buffer_size; int * decrypted_buffer; int * decrypted_ptr; } ;
struct archive_read {int archive; TYPE_1__* format; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ENOMEM ;
 int archive_set_error (int *,int ,char*) ;
 int * malloc (size_t) ;

__attribute__((used)) static int
zip_alloc_decryption_buffer(struct archive_read *a)
{
 struct zip *zip = (struct zip *)(a->format->data);
 size_t bs = 256 * 1024;

 if (zip->decrypted_buffer == ((void*)0)) {
  zip->decrypted_buffer_size = bs;
  zip->decrypted_buffer = malloc(bs);
  if (zip->decrypted_buffer == ((void*)0)) {
   archive_set_error(&a->archive, ENOMEM,
       "No memory for ZIP decryption");
   return (ARCHIVE_FATAL);
  }
 }
 zip->decrypted_ptr = zip->decrypted_buffer;
 return (ARCHIVE_OK);
}
