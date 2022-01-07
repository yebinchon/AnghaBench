
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zip_entry {int dummy; } ;
struct zip {scalar_t__ has_encrypted_entries; scalar_t__ unconsumed; scalar_t__ hctx_valid; scalar_t__ cctx_valid; scalar_t__ tctx_valid; int hctx; int cctx; int * entry; int * zip_entries; } ;
struct TYPE_4__ {char* archive_format_name; int archive_format; } ;
struct archive_read {TYPE_2__ archive; TYPE_1__* format; } ;
struct archive_entry {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__ data; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_FORMAT_ZIP ;
 scalar_t__ ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW ;
 int ENOMEM ;
 char* __archive_read_ahead (struct archive_read*,int,int*) ;
 int __archive_read_consume (struct archive_read*,scalar_t__) ;
 int __archive_read_reset_passphrase (struct archive_read*) ;
 int archive_decrypto_aes_ctr_release (int *) ;
 int archive_hmac_sha1_cleanup (int *) ;
 int archive_set_error (TYPE_2__*,int ,char*) ;
 int * malloc (int) ;
 int memset (int *,int ,int) ;
 int zip_read_local_file_header (struct archive_read*,struct archive_entry*,struct zip*) ;

__attribute__((used)) static int
archive_read_format_zip_streamable_read_header(struct archive_read *a,
    struct archive_entry *entry)
{
 struct zip *zip;

 a->archive.archive_format = ARCHIVE_FORMAT_ZIP;
 if (a->archive.archive_format_name == ((void*)0))
  a->archive.archive_format_name = "ZIP";

 zip = (struct zip *)(a->format->data);
 if (zip->has_encrypted_entries ==
   ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW)
  zip->has_encrypted_entries = 0;


 if (zip->zip_entries == ((void*)0)) {
  zip->zip_entries = malloc(sizeof(struct zip_entry));
  if (zip->zip_entries == ((void*)0)) {
   archive_set_error(&a->archive, ENOMEM,
       "Out  of memory");
   return ARCHIVE_FATAL;
  }
 }
 zip->entry = zip->zip_entries;
 memset(zip->entry, 0, sizeof(struct zip_entry));

 if (zip->cctx_valid)
  archive_decrypto_aes_ctr_release(&zip->cctx);
 if (zip->hctx_valid)
  archive_hmac_sha1_cleanup(&zip->hctx);
 zip->tctx_valid = zip->cctx_valid = zip->hctx_valid = 0;
 __archive_read_reset_passphrase(a);


 __archive_read_consume(a, zip->unconsumed);
 zip->unconsumed = 0;
 for (;;) {
  int64_t skipped = 0;
  const char *p, *end;
  ssize_t bytes;

  p = __archive_read_ahead(a, 4, &bytes);
  if (p == ((void*)0))
   return (ARCHIVE_FATAL);
  end = p + bytes;

  while (p + 4 <= end) {
   if (p[0] == 'P' && p[1] == 'K') {
    if (p[2] == '\003' && p[3] == '\004') {

     __archive_read_consume(a, skipped);
     return zip_read_local_file_header(a,
         entry, zip);
    }
                              if (p[2] == '\001' && p[3] == '\002') {
                                      return (ARCHIVE_EOF);
                              }



                              if ((p[2] == '\005' && p[3] == '\006')
                                  || (p[2] == '\006' && p[3] == '\006'))
                                      return (ARCHIVE_EOF);
   }
   ++p;
   ++skipped;
  }
  __archive_read_consume(a, skipped);
 }
}
