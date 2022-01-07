
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ s; } ;
struct zip_entry {scalar_t__ local_header_offset; TYPE_2__ rsrcname; int node; } ;
struct zip {scalar_t__ has_encrypted_entries; scalar_t__ unconsumed; struct zip_entry* entry; scalar_t__ hctx_valid; scalar_t__ cctx_valid; scalar_t__ tctx_valid; int hctx; int cctx; int tree_rsrc; int tree; int * zip_entries; } ;
struct TYPE_6__ {char* archive_format_name; int archive_format; } ;
struct archive_read {TYPE_3__ archive; TYPE_1__* format; } ;
struct archive_entry {int dummy; } ;
typedef scalar_t__ int64_t ;
struct TYPE_4__ {scalar_t__ data; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_FORMAT_ZIP ;
 int ARCHIVE_OK ;
 int ARCHIVE_RB_DIR_RIGHT ;
 scalar_t__ ARCHIVE_RB_TREE_MIN (int *) ;
 scalar_t__ ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW ;
 int SEEK_SET ;
 scalar_t__ __archive_rb_tree_find_node (int *,scalar_t__) ;
 scalar_t__ __archive_rb_tree_iterate (int *,int *,int ) ;
 int __archive_read_consume (struct archive_read*,scalar_t__) ;
 int __archive_read_reset_passphrase (struct archive_read*) ;
 int __archive_read_seek (struct archive_read*,scalar_t__,int ) ;
 int archive_decrypto_aes_ctr_release (int *) ;
 scalar_t__ archive_filter_bytes (TYPE_3__*,int ) ;
 int archive_hmac_sha1_cleanup (int *) ;
 int slurp_central_directory (struct archive_read*,struct archive_entry*,struct zip*) ;
 int zip_read_local_file_header (struct archive_read*,struct archive_entry*,struct zip*) ;
 int zip_read_mac_metadata (struct archive_read*,struct archive_entry*,struct zip_entry*) ;

__attribute__((used)) static int
archive_read_format_zip_seekable_read_header(struct archive_read *a,
 struct archive_entry *entry)
{
 struct zip *zip = (struct zip *)a->format->data;
 struct zip_entry *rsrc;
 int64_t offset;
 int r, ret = ARCHIVE_OK;
 if (zip->has_encrypted_entries ==
   ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW)
  zip->has_encrypted_entries = 0;

 a->archive.archive_format = ARCHIVE_FORMAT_ZIP;
 if (a->archive.archive_format_name == ((void*)0))
  a->archive.archive_format_name = "ZIP";

 if (zip->zip_entries == ((void*)0)) {
  r = slurp_central_directory(a, entry, zip);
  if (r != ARCHIVE_OK)
   return r;


  zip->entry =
      (struct zip_entry *)ARCHIVE_RB_TREE_MIN(&zip->tree);
 } else if (zip->entry != ((void*)0)) {

  zip->entry = (struct zip_entry *)__archive_rb_tree_iterate(
      &zip->tree, &zip->entry->node, ARCHIVE_RB_DIR_RIGHT);
 }

 if (zip->entry == ((void*)0))
  return ARCHIVE_EOF;

 if (zip->entry->rsrcname.s)
  rsrc = (struct zip_entry *)__archive_rb_tree_find_node(
      &zip->tree_rsrc, zip->entry->rsrcname.s);
 else
  rsrc = ((void*)0);

 if (zip->cctx_valid)
  archive_decrypto_aes_ctr_release(&zip->cctx);
 if (zip->hctx_valid)
  archive_hmac_sha1_cleanup(&zip->hctx);
 zip->tctx_valid = zip->cctx_valid = zip->hctx_valid = 0;
 __archive_read_reset_passphrase(a);




 offset = archive_filter_bytes(&a->archive, 0);
 if (offset < zip->entry->local_header_offset)
  __archive_read_consume(a,
      zip->entry->local_header_offset - offset);
 else if (offset != zip->entry->local_header_offset) {
  __archive_read_seek(a, zip->entry->local_header_offset,
      SEEK_SET);
 }
 zip->unconsumed = 0;
 r = zip_read_local_file_header(a, entry, zip);
 if (r != ARCHIVE_OK)
  return r;
 if (rsrc) {
  int ret2 = zip_read_mac_metadata(a, entry, rsrc);
  if (ret2 < ret)
   ret = ret2;
 }
 return (ret);
}
