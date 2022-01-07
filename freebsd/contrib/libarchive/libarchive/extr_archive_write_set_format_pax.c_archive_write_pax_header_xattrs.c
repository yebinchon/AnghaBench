
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* s; } ;
struct pax {TYPE_1__ l_url_encoded_name; int sconv_utf8; } ;
struct archive_write {int archive; } ;
struct archive_entry {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 scalar_t__ ENOMEM ;
 int archive_entry_xattr_next (struct archive_entry*,char const**,void const**,size_t*) ;
 int archive_entry_xattr_reset (struct archive_entry*) ;
 int archive_set_error (int *,scalar_t__,char*) ;
 int archive_strcpy_l (TYPE_1__*,char*,int ) ;
 int archive_write_pax_header_xattr (struct pax*,char*,void const*,size_t) ;
 scalar_t__ errno ;
 int free (char*) ;
 char* url_encode (char const*) ;

__attribute__((used)) static int
archive_write_pax_header_xattrs(struct archive_write *a,
    struct pax *pax, struct archive_entry *entry)
{
 int i = archive_entry_xattr_reset(entry);

 while (i--) {
  const char *name;
  const void *value;
  char *url_encoded_name = ((void*)0), *encoded_name = ((void*)0);
  size_t size;
  int r;

  archive_entry_xattr_next(entry, &name, &value, &size);
  url_encoded_name = url_encode(name);
  if (url_encoded_name != ((void*)0)) {

   r = archive_strcpy_l(&(pax->l_url_encoded_name),
       url_encoded_name, pax->sconv_utf8);
   free(url_encoded_name);
   if (r == 0)
    encoded_name = pax->l_url_encoded_name.s;
   else if (errno == ENOMEM) {
    archive_set_error(&a->archive, ENOMEM,
        "Can't allocate memory for Linkname");
    return (ARCHIVE_FATAL);
   }
  }

  archive_write_pax_header_xattr(pax, encoded_name,
      value, size);

 }
 return (ARCHIVE_OK);
}
