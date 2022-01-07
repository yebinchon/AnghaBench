
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uid_t ;
typedef int time_t ;
struct archive_entry {int dummy; } ;
struct ar {int entry_padding; int entry_bytes_remaining; scalar_t__ entry_offset; } ;
typedef int mode_t ;
typedef int gid_t ;


 int AE_IFREG ;
 int ARCHIVE_OK ;
 int AR_date_offset ;
 int AR_date_size ;
 int AR_gid_offset ;
 int AR_gid_size ;
 int AR_mode_offset ;
 int AR_mode_size ;
 int AR_size_offset ;
 int AR_size_size ;
 int AR_uid_offset ;
 int AR_uid_size ;
 int ar_atol10 (char const*,int ) ;
 scalar_t__ ar_atol8 (char const*,int ) ;
 int archive_entry_set_filetype (struct archive_entry*,int ) ;
 int archive_entry_set_gid (struct archive_entry*,int ) ;
 int archive_entry_set_mode (struct archive_entry*,int ) ;
 int archive_entry_set_mtime (struct archive_entry*,int ,long) ;
 int archive_entry_set_size (struct archive_entry*,int) ;
 int archive_entry_set_uid (struct archive_entry*,int ) ;

__attribute__((used)) static int
ar_parse_common_header(struct ar *ar, struct archive_entry *entry,
    const char *h)
{
 uint64_t n;


 archive_entry_set_filetype(entry, AE_IFREG);
 archive_entry_set_mtime(entry,
     (time_t)ar_atol10(h + AR_date_offset, AR_date_size), 0L);
 archive_entry_set_uid(entry,
     (uid_t)ar_atol10(h + AR_uid_offset, AR_uid_size));
 archive_entry_set_gid(entry,
     (gid_t)ar_atol10(h + AR_gid_offset, AR_gid_size));
 archive_entry_set_mode(entry,
     (mode_t)ar_atol8(h + AR_mode_offset, AR_mode_size));
 n = ar_atol10(h + AR_size_offset, AR_size_size);

 ar->entry_offset = 0;
 ar->entry_padding = n % 2;
 archive_entry_set_size(entry, n);
 ar->entry_bytes_remaining = n;
 return (ARCHIVE_OK);
}
