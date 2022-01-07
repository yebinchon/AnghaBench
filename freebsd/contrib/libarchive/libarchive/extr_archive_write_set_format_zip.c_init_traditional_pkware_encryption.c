
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct zip {int written_bytes; int entry_compressed_written; int tctx; int trad_chkdat; } ;
struct archive_write {int archive; struct zip* format_data; } ;
typedef int key ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int TRAD_HEADER_SIZE ;
 char* __archive_write_get_passphrase (struct archive_write*) ;
 int __archive_write_output (struct archive_write*,int *,int) ;
 int archive_random (int *,int) ;
 int archive_set_error (int *,int ,char*) ;
 int strlen (char const*) ;
 int trad_enc_encrypt_update (int *,int *,int,int *,int) ;
 int trad_enc_init (int *,char const*,int ) ;

__attribute__((used)) static int
init_traditional_pkware_encryption(struct archive_write *a)
{
 struct zip *zip = a->format_data;
 const char *passphrase;
 uint8_t key[TRAD_HEADER_SIZE];
 uint8_t key_encrypted[TRAD_HEADER_SIZE];
 int ret;

 passphrase = __archive_write_get_passphrase(a);
 if (passphrase == ((void*)0)) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Encryption needs passphrase");
  return ARCHIVE_FAILED;
 }
 if (archive_random(key, sizeof(key)-1) != ARCHIVE_OK) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Can't generate random number for encryption");
  return ARCHIVE_FATAL;
 }
 trad_enc_init(&zip->tctx, passphrase, strlen(passphrase));


 key[TRAD_HEADER_SIZE-1] = zip->trad_chkdat;
 trad_enc_encrypt_update(&zip->tctx, key, TRAD_HEADER_SIZE,
     key_encrypted, TRAD_HEADER_SIZE);

 ret = __archive_write_output(a, key_encrypted, TRAD_HEADER_SIZE);
 if (ret != ARCHIVE_OK)
  return (ret);
 zip->written_bytes += TRAD_HEADER_SIZE;
 zip->entry_compressed_written += TRAD_HEADER_SIZE;
 return (ret);
}
