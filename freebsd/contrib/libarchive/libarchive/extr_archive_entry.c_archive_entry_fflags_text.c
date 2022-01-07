
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {scalar_t__ ae_fflags_set; scalar_t__ ae_fflags_clear; int ae_fflags_text; int archive; } ;


 scalar_t__ ENOMEM ;
 int __archive_errx (int,char*) ;
 char* ae_fflagstostr (scalar_t__,scalar_t__) ;
 int archive_mstring_copy_mbs (int *,char*) ;
 scalar_t__ archive_mstring_get_mbs (int ,int *,char const**) ;
 scalar_t__ errno ;
 int free (char*) ;

const char *
archive_entry_fflags_text(struct archive_entry *entry)
{
 const char *f;
 char *p;

 if (archive_mstring_get_mbs(entry->archive,
     &entry->ae_fflags_text, &f) == 0) {
  if (f != ((void*)0))
   return (f);
 } else if (errno == ENOMEM)
  __archive_errx(1, "No memory");

 if (entry->ae_fflags_set == 0 && entry->ae_fflags_clear == 0)
  return (((void*)0));

 p = ae_fflagstostr(entry->ae_fflags_set, entry->ae_fflags_clear);
 if (p == ((void*)0))
  return (((void*)0));

 archive_mstring_copy_mbs(&entry->ae_fflags_text, p);
 free(p);
 if (archive_mstring_get_mbs(entry->archive,
     &entry->ae_fflags_text, &f) == 0)
  return (f);
 if (errno == ENOMEM)
  __archive_errx(1, "No memory");
 return (((void*)0));
}
