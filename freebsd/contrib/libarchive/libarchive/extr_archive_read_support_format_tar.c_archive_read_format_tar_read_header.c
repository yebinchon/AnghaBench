
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct tar {int realsize; int init_default_conversion; struct sparse_block* sparse_list; int entry_bytes_remaining; int * sconv_default; int * sconv; int * opt_sconv; scalar_t__ realsize_override; scalar_t__ entry_offset; } ;
struct sparse_block {int remaining; int offset; int hole; struct sparse_block* next; } ;
struct archive_read {int archive; TYPE_1__* format; } ;
struct archive_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int AE_IFDIR ;
 scalar_t__ AE_IFREG ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 scalar_t__ archive_entry_filetype (struct archive_entry*) ;
 char* archive_entry_pathname (struct archive_entry*) ;
 int* archive_entry_pathname_w (struct archive_entry*) ;
 int archive_entry_set_dev (struct archive_entry*,int) ;
 int archive_entry_set_filetype (struct archive_entry*,int ) ;
 int archive_entry_set_ino (struct archive_entry*,int) ;
 int archive_entry_sparse_add_entry (struct archive_entry*,int ,int ) ;
 int * archive_string_default_conversion_for_read (int *) ;
 int gnu_add_sparse_entry (struct archive_read*,struct tar*,int ,int ) ;
 int gnu_clear_sparse_list (struct tar*) ;
 size_t strlen (char const*) ;
 int tar_flush_unconsumed (struct archive_read*,size_t*) ;
 int tar_read_header (struct archive_read*,struct tar*,struct archive_entry*,size_t*) ;
 size_t wcslen (int const*) ;

__attribute__((used)) static int
archive_read_format_tar_read_header(struct archive_read *a,
    struct archive_entry *entry)
{
 static int default_inode;
 static int default_dev;
 struct tar *tar;
 const char *p;
 const wchar_t *wp;
 int r;
 size_t l, unconsumed = 0;


 archive_entry_set_dev(entry, 1 + default_dev);
 archive_entry_set_ino(entry, ++default_inode);

 if (default_inode >= 0xffff) {
  ++default_dev;
  default_inode = 0;
 }

 tar = (struct tar *)(a->format->data);
 tar->entry_offset = 0;
 gnu_clear_sparse_list(tar);
 tar->realsize = -1;
 tar->realsize_override = 0;


 tar->sconv = tar->opt_sconv;
 if (tar->sconv == ((void*)0)) {
  if (!tar->init_default_conversion) {
   tar->sconv_default =
       archive_string_default_conversion_for_read(&(a->archive));
   tar->init_default_conversion = 1;
  }
  tar->sconv = tar->sconv_default;
 }

 r = tar_read_header(a, tar, entry, &unconsumed);

 tar_flush_unconsumed(a, &unconsumed);





 if (tar->sparse_list == ((void*)0)) {
  if (gnu_add_sparse_entry(a, tar, 0, tar->entry_bytes_remaining)
      != ARCHIVE_OK)
   return (ARCHIVE_FATAL);
 } else {
  struct sparse_block *sb;

  for (sb = tar->sparse_list; sb != ((void*)0); sb = sb->next) {
   if (!sb->hole)
    archive_entry_sparse_add_entry(entry,
        sb->offset, sb->remaining);
  }
 }

 if (r == ARCHIVE_OK && archive_entry_filetype(entry) == AE_IFREG) {





  if ((wp = archive_entry_pathname_w(entry)) != ((void*)0)) {
   l = wcslen(wp);
   if (l > 0 && wp[l - 1] == L'/') {
    archive_entry_set_filetype(entry, AE_IFDIR);
   }
  } else if ((p = archive_entry_pathname(entry)) != ((void*)0)) {
   l = strlen(p);
   if (l > 0 && p[l - 1] == '/') {
    archive_entry_set_filetype(entry, AE_IFDIR);
   }
  }
 }
 return (r);
}
