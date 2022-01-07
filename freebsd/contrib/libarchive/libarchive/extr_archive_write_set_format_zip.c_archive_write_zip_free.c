
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip {int hctx; scalar_t__ hctx_valid; int cctx; scalar_t__ cctx_valid; int entry; struct zip* buf; struct zip* buff; struct zip* next; struct zip* central_directory; } ;
struct cd_segment {int hctx; scalar_t__ hctx_valid; int cctx; scalar_t__ cctx_valid; int entry; struct cd_segment* buf; struct cd_segment* buff; struct cd_segment* next; struct cd_segment* central_directory; } ;
struct archive_write {struct zip* format_data; } ;


 int ARCHIVE_OK ;
 int archive_encrypto_aes_ctr_release (int *) ;
 int archive_entry_free (int ) ;
 int archive_hmac_sha1_cleanup (int *) ;
 int free (struct zip*) ;

__attribute__((used)) static int
archive_write_zip_free(struct archive_write *a)
{
 struct zip *zip;
 struct cd_segment *segment;

 zip = a->format_data;
 while (zip->central_directory != ((void*)0)) {
  segment = zip->central_directory;
  zip->central_directory = segment->next;
  free(segment->buff);
  free(segment);
 }
 free(zip->buf);
 archive_entry_free(zip->entry);
 if (zip->cctx_valid)
  archive_encrypto_aes_ctr_release(&zip->cctx);
 if (zip->hctx_valid)
  archive_hmac_sha1_cleanup(&zip->hctx);


 free(zip);
 a->format_data = ((void*)0);
 return (ARCHIVE_OK);
}
