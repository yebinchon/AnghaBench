
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tar {int * sconv_acl; } ;
struct archive_read {int archive; } ;
struct archive_entry {int dummy; } ;





 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ENOMEM ;
 int archive_acl_from_text_l (int ,char const*,int,int *) ;
 int archive_entry_acl (struct archive_entry*) ;
 int archive_set_error (int *,int ,char*,...) ;
 int * archive_string_conversion_from_charset (int *,char*,int) ;

__attribute__((used)) static int
pax_attribute_acl(struct archive_read *a, struct tar *tar,
    struct archive_entry *entry, const char *value, int type)
{
 int r;
 const char* errstr;

 switch (type) {
 case 130:
  errstr = "SCHILY.acl.access";
  break;
 case 129:
  errstr = "SCHILY.acl.default";
  break;
 case 128:
  errstr = "SCHILY.acl.ace";
  break;
 default:
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Unknown ACL type: %d", type);
  return(ARCHIVE_FATAL);
 }

 if (tar->sconv_acl == ((void*)0)) {
  tar->sconv_acl =
      archive_string_conversion_from_charset(
   &(a->archive), "UTF-8", 1);
  if (tar->sconv_acl == ((void*)0))
   return (ARCHIVE_FATAL);
 }

 r = archive_acl_from_text_l(archive_entry_acl(entry), value, type,
     tar->sconv_acl);
 if (r != ARCHIVE_OK) {
  if (r == ARCHIVE_FATAL) {
   archive_set_error(&a->archive, ENOMEM,
       "%s %s", "Can't allocate memory for ",
       errstr);
   return (r);
  }
  archive_set_error(&a->archive,
      ARCHIVE_ERRNO_MISC, "%s %s", "Parse error: ", errstr);
 }
 return (r);
}
