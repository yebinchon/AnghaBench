
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pax {int flags; int pax_header; } ;
struct archive_string {int s; } ;


 int WRITE_LIBARCHIVE_XATTR ;
 int WRITE_SCHILY_XATTR ;
 int add_pax_attr (int *,int ,char*) ;
 int add_pax_attr_binary (int *,int ,void const*,size_t) ;
 int archive_strcat (struct archive_string*,char const*) ;
 int archive_strcpy (struct archive_string*,char*) ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;
 char* base64_encode (char const*,size_t) ;
 int free (char*) ;

__attribute__((used)) static void
archive_write_pax_header_xattr(struct pax *pax, const char *encoded_name,
    const void *value, size_t value_len)
{
 struct archive_string s;
 char *encoded_value;

 if (pax->flags & WRITE_LIBARCHIVE_XATTR) {
  encoded_value = base64_encode((const char *)value, value_len);

  if (encoded_name != ((void*)0) && encoded_value != ((void*)0)) {
   archive_string_init(&s);
   archive_strcpy(&s, "LIBARCHIVE.xattr.");
   archive_strcat(&s, encoded_name);
   add_pax_attr(&(pax->pax_header), s.s, encoded_value);
   archive_string_free(&s);
  }
  free(encoded_value);
 }
 if (pax->flags & WRITE_SCHILY_XATTR) {
  archive_string_init(&s);
  archive_strcpy(&s, "SCHILY.xattr.");
  archive_strcat(&s, encoded_name);
  add_pax_attr_binary(&(pax->pax_header), s.s, value, value_len);
  archive_string_free(&s);
 }
}
