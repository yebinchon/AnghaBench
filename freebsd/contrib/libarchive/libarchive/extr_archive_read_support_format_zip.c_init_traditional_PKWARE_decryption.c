
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct zip {int tctx_valid; scalar_t__ entry_bytes_remaining; scalar_t__ decrypted_bytes_remaining; int entry_compressed_bytes_read; TYPE_2__* entry; int tctx; } ;
struct archive_read {int archive; TYPE_1__* format; } ;
typedef int intmax_t ;
struct TYPE_4__ {int zip_flags; scalar_t__ decdat; } ;
struct TYPE_3__ {scalar_t__ data; } ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 scalar_t__ ENC_HEADER_SIZE ;
 int ZIP_LENGTH_AT_END ;
 void* __archive_read_ahead (struct archive_read*,scalar_t__,int *) ;
 int __archive_read_consume (struct archive_read*,scalar_t__) ;
 char* __archive_read_next_passphrase (struct archive_read*) ;
 int archive_set_error (int *,int ,char*,...) ;
 int strlen (char const*) ;
 int trad_enc_init (int *,char const*,int ,void const*,scalar_t__,scalar_t__*) ;
 int zip_alloc_decryption_buffer (struct archive_read*) ;

__attribute__((used)) static int
init_traditional_PKWARE_decryption(struct archive_read *a)
{
 struct zip *zip = (struct zip *)(a->format->data);
 const void *p;
 int retry;
 int r;

 if (zip->tctx_valid)
  return (ARCHIVE_OK);






 if (0 == (zip->entry->zip_flags & ZIP_LENGTH_AT_END)
     && zip->entry_bytes_remaining < 12) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Truncated Zip encrypted body: only %jd bytes available",
      (intmax_t)zip->entry_bytes_remaining);
  return (ARCHIVE_FATAL);
 }

 p = __archive_read_ahead(a, 12, ((void*)0));
 if (p == ((void*)0)) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Truncated ZIP file data");
  return (ARCHIVE_FATAL);
 }

 for (retry = 0;; retry++) {
  const char *passphrase;
  uint8_t crcchk;

  passphrase = __archive_read_next_passphrase(a);
  if (passphrase == ((void*)0)) {
   archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
       (retry > 0)?
    "Incorrect passphrase":
    "Passphrase required for this entry");
   return (ARCHIVE_FAILED);
  }




  r = trad_enc_init(&zip->tctx, passphrase, strlen(passphrase),
   p, 12, &crcchk);
  if (r == 0 && crcchk == zip->entry->decdat)
   break;
  if (retry > 10000) {

   archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
       "Too many incorrect passphrases");
   return (ARCHIVE_FAILED);
  }
 }

 __archive_read_consume(a, 12);
 zip->tctx_valid = 1;
 if (0 == (zip->entry->zip_flags & ZIP_LENGTH_AT_END)) {
     zip->entry_bytes_remaining -= 12;
 }

 zip->entry_compressed_bytes_read += 12;
 zip->decrypted_bytes_remaining = 0;

 return (zip_alloc_decryption_buffer(a));

}
