
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int redir_type; int redir_flags; } ;
struct rar5 {TYPE_1__ file; } ;
struct archive_read {int archive; } ;
struct archive_entry {int dummy; } ;
typedef size_t ssize_t ;
typedef int int64_t ;


 int AE_IFLNK ;
 int AE_IFREG ;
 int AE_SYMLINK_TYPE_DIRECTORY ;
 int AE_SYMLINK_TYPE_FILE ;
 int ARCHIVE_EOF ;
 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_FATAL ;
 scalar_t__ ARCHIVE_OK ;
 int MAX_NAME_IN_BYTES ;
 int MAX_NAME_IN_CHARS ;
 int REDIR_SYMLINK_IS_DIR ;



 int archive_entry_set_filetype (struct archive_entry*,int ) ;
 int archive_entry_set_symlink_type (struct archive_entry*,int ) ;
 int archive_entry_update_hardlink_utf8 (struct archive_entry*,char*) ;
 int archive_entry_update_symlink_utf8 (struct archive_entry*,char*) ;
 int archive_set_error (int *,int ,char*) ;
 scalar_t__ consume (struct archive_read*,int ) ;
 int memcpy (char*,int const*,size_t) ;
 int read_ahead (struct archive_read*,size_t,int const**) ;
 int read_var (struct archive_read*,int*,scalar_t__*) ;
 int read_var_sized (struct archive_read*,size_t*,int *) ;

__attribute__((used)) static int parse_file_extra_redir(struct archive_read* a,
    struct archive_entry* e, struct rar5* rar, ssize_t* extra_data_size)
{
 uint64_t value_size = 0;
 size_t target_size = 0;
 char target_utf8_buf[MAX_NAME_IN_BYTES];
 const uint8_t* p;

 if(!read_var(a, &rar->file.redir_type, &value_size))
  return ARCHIVE_EOF;
 if(ARCHIVE_OK != consume(a, (int64_t)value_size))
  return ARCHIVE_EOF;
 *extra_data_size -= value_size;

 if(!read_var(a, &rar->file.redir_flags, &value_size))
  return ARCHIVE_EOF;
 if(ARCHIVE_OK != consume(a, (int64_t)value_size))
  return ARCHIVE_EOF;
 *extra_data_size -= value_size;

 if(!read_var_sized(a, &target_size, ((void*)0)))
  return ARCHIVE_EOF;
 *extra_data_size -= target_size + 1;

 if(!read_ahead(a, target_size, &p))
  return ARCHIVE_EOF;

 if(target_size > (MAX_NAME_IN_CHARS - 1)) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Link target is too long");
  return ARCHIVE_FATAL;
 }

 if(target_size == 0) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "No link target specified");
  return ARCHIVE_FATAL;
 }

 memcpy(target_utf8_buf, p, target_size);
 target_utf8_buf[target_size] = 0;

 if(ARCHIVE_OK != consume(a, (int64_t)target_size))
  return ARCHIVE_EOF;

 switch(rar->file.redir_type) {
  case 129:
  case 128:
   archive_entry_set_filetype(e, AE_IFLNK);
   archive_entry_update_symlink_utf8(e, target_utf8_buf);
   if (rar->file.redir_flags & REDIR_SYMLINK_IS_DIR) {
    archive_entry_set_symlink_type(e,
     AE_SYMLINK_TYPE_DIRECTORY);
   } else {
    archive_entry_set_symlink_type(e,
    AE_SYMLINK_TYPE_FILE);
   }
   break;

  case 130:
   archive_entry_set_filetype(e, AE_IFREG);
   archive_entry_update_hardlink_utf8(e, target_utf8_buf);
   break;

  default:

   break;
 }
 return ARCHIVE_OK;
}
