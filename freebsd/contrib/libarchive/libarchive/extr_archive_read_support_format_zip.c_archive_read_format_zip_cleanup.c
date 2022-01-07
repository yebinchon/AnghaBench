
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zip_entry {int format_name; struct zip_entry* v_data; struct zip_entry* erd; struct zip_entry* iv; int hctx; scalar_t__ hctx_valid; int cctx; scalar_t__ cctx_valid; struct zip_entry* decrypted_buffer; int rsrcname; struct zip_entry* next; struct zip_entry* zip_entries; int ppmd8; scalar_t__ ppmd8_valid; struct zip_entry* uncompressed_buffer; int bzstream; scalar_t__ bzstream_valid; int zipx_lzma_stream; scalar_t__ zipx_lzma_valid; int stream; scalar_t__ stream_valid; } ;
struct zip {int format_name; struct zip* v_data; struct zip* erd; struct zip* iv; int hctx; scalar_t__ hctx_valid; int cctx; scalar_t__ cctx_valid; struct zip* decrypted_buffer; int rsrcname; struct zip* next; struct zip* zip_entries; int ppmd8; scalar_t__ ppmd8_valid; struct zip* uncompressed_buffer; int bzstream; scalar_t__ bzstream_valid; int zipx_lzma_stream; scalar_t__ zipx_lzma_valid; int stream; scalar_t__ stream_valid; } ;
struct archive_read {TYPE_1__* format; } ;
struct TYPE_4__ {int (* Ppmd8_Free ) (int *) ;} ;
struct TYPE_3__ {int * data; } ;


 int ARCHIVE_OK ;
 int BZ2_bzDecompressEnd (int *) ;
 TYPE_2__ __archive_ppmd8_functions ;
 int archive_decrypto_aes_ctr_release (int *) ;
 int archive_hmac_sha1_cleanup (int *) ;
 int archive_string_free (int *) ;
 int free (struct zip_entry*) ;
 int inflateEnd (int *) ;
 int lzma_end (int *) ;
 int stub1 (int *) ;

__attribute__((used)) static int
archive_read_format_zip_cleanup(struct archive_read *a)
{
 struct zip *zip;
 struct zip_entry *zip_entry, *next_zip_entry;

 zip = (struct zip *)(a->format->data);
 free(zip->uncompressed_buffer);

 if (zip->ppmd8_valid)
  __archive_ppmd8_functions.Ppmd8_Free(&zip->ppmd8);

 if (zip->zip_entries) {
  zip_entry = zip->zip_entries;
  while (zip_entry != ((void*)0)) {
   next_zip_entry = zip_entry->next;
   archive_string_free(&zip_entry->rsrcname);
   free(zip_entry);
   zip_entry = next_zip_entry;
  }
 }
 free(zip->decrypted_buffer);
 if (zip->cctx_valid)
  archive_decrypto_aes_ctr_release(&zip->cctx);
 if (zip->hctx_valid)
  archive_hmac_sha1_cleanup(&zip->hctx);
 free(zip->iv);
 free(zip->erd);
 free(zip->v_data);
 archive_string_free(&zip->format_name);
 free(zip);
 (a->format->data) = ((void*)0);
 return (ARCHIVE_OK);
}
