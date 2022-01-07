
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {char const* s; } ;
struct archive_read {int archive; } ;
struct archive_entry {int dummy; } ;
typedef size_t ssize_t ;


 int ARCHIVE_EOF ;
 int ARCHIVE_ERRNO_PROGRAMMER ;
 int ARCHIVE_FATAL ;
 scalar_t__ ARCHIVE_OK ;
 char* archive_entry_pathname_utf8 (struct archive_entry*) ;
 int archive_entry_update_pathname_utf8 (struct archive_entry*,char const*) ;
 int archive_set_error (int *,int ,char*) ;
 int archive_strcat (struct archive_string*,char const*) ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;
 int archive_string_sprintf (struct archive_string*,char*,size_t) ;
 scalar_t__ consume (struct archive_read*,size_t) ;
 int read_var_sized (struct archive_read*,size_t*,size_t*) ;

__attribute__((used)) static int parse_file_extra_version(struct archive_read* a,
    struct archive_entry* e, ssize_t* extra_data_size)
{
 size_t flags = 0;
 size_t version = 0;
 size_t value_len = 0;
 struct archive_string version_string;
 struct archive_string name_utf8_string;


 if(!read_var_sized(a, &flags, &value_len))
  return ARCHIVE_EOF;

 *extra_data_size -= value_len;
 if(ARCHIVE_OK != consume(a, value_len))
  return ARCHIVE_EOF;

 if(!read_var_sized(a, &version, &value_len))
  return ARCHIVE_EOF;

 *extra_data_size -= value_len;
 if(ARCHIVE_OK != consume(a, value_len))
  return ARCHIVE_EOF;



 const char* cur_filename = archive_entry_pathname_utf8(e);
 if(cur_filename == ((void*)0)) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_PROGRAMMER,
      "Version entry without file name");
  return ARCHIVE_FATAL;
 }

 archive_string_init(&version_string);
 archive_string_init(&name_utf8_string);



 archive_string_sprintf(&version_string, ";%zu", version);


 archive_strcat(&name_utf8_string, cur_filename);
 archive_strcat(&name_utf8_string, version_string.s);


 archive_entry_update_pathname_utf8(e, name_utf8_string.s);


 archive_string_free(&version_string);
 archive_string_free(&name_utf8_string);
 return ARCHIVE_OK;
}
