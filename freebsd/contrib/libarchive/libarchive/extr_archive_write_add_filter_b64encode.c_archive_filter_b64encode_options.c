
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct private_b64encode {int mode; int name; } ;
struct archive_write_filter {int archive; scalar_t__ data; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int archive_set_error (int ,int ,char*) ;
 int archive_strcpy (int *,char const*) ;
 scalar_t__ atol8 (char const*,int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
archive_filter_b64encode_options(struct archive_write_filter *f, const char *key,
    const char *value)
{
 struct private_b64encode *state = (struct private_b64encode *)f->data;

 if (strcmp(key, "mode") == 0) {
  if (value == ((void*)0)) {
   archive_set_error(f->archive, ARCHIVE_ERRNO_MISC,
       "mode option requires octal digits");
   return (ARCHIVE_FAILED);
  }
  state->mode = (int)atol8(value, strlen(value)) & 0777;
  return (ARCHIVE_OK);
 } else if (strcmp(key, "name") == 0) {
  if (value == ((void*)0)) {
   archive_set_error(f->archive, ARCHIVE_ERRNO_MISC,
       "name option requires a string");
   return (ARCHIVE_FAILED);
  }
  archive_strcpy(&state->name, value);
  return (ARCHIVE_OK);
 }




 return (ARCHIVE_WARN);
}
