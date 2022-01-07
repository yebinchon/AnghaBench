
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {int archive; } ;
struct archive_string {int dummy; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int archive_set_error (int *,int ,char*,size_t,char const*) ;
 int archive_strcpy (struct archive_string*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int
get_str_opt(struct archive_write *a, struct archive_string *s,
    size_t maxsize, const char *key, const char *value)
{

 if (strlen(value) > maxsize) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Value is longer than %zu characters "
      "for option ``%s''", maxsize, key);
  return (ARCHIVE_FATAL);
 }
 archive_strcpy(s, value);
 return (ARCHIVE_OK);
}
