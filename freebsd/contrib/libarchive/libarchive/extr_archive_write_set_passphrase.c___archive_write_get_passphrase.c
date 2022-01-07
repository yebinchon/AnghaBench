
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {char const* passphrase; char* (* passphrase_callback ) (int *,int ) ;int archive; int passphrase_client_data; } ;


 int ENOMEM ;
 int archive_set_error (int *,int ,char*) ;
 char const* strdup (char const*) ;
 char* stub1 (int *,int ) ;

const char *
__archive_write_get_passphrase(struct archive_write *a)
{

 if (a->passphrase != ((void*)0))
  return (a->passphrase);

 if (a->passphrase_callback != ((void*)0)) {
  const char *p;
  p = a->passphrase_callback(&a->archive,
      a->passphrase_client_data);
  if (p != ((void*)0)) {
   a->passphrase = strdup(p);
   if (a->passphrase == ((void*)0)) {
    archive_set_error(&a->archive, ENOMEM,
        "Can't allocate data for passphrase");
    return (((void*)0));
   }
   return (a->passphrase);
  }
 }
 return (((void*)0));
}
