
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;


 int archive_entry_xattr_add_entry (struct archive_entry*,char*,void*,size_t) ;
 void* base64_decode (char const*,int,size_t*) ;
 int free (void*) ;
 scalar_t__ memcmp (char const*,char*,int) ;
 int strlen (char const*) ;
 char* url_decode (char const*) ;

__attribute__((used)) static int
pax_attribute_xattr(struct archive_entry *entry,
 const char *name, const char *value)
{
 char *name_decoded;
 void *value_decoded;
 size_t value_len;

 if (strlen(name) < 18 || (memcmp(name, "LIBARCHIVE.xattr.", 17)) != 0)
  return 3;

 name += 17;


 name_decoded = url_decode(name);
 if (name_decoded == ((void*)0))
  return 2;


 value_decoded = base64_decode(value, strlen(value), &value_len);
 if (value_decoded == ((void*)0)) {
  free(name_decoded);
  return 1;
 }

 archive_entry_xattr_add_entry(entry, name_decoded,
  value_decoded, value_len);

 free(name_decoded);
 free(value_decoded);
 return 0;
}
