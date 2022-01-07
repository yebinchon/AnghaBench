
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int acl; int archive; } ;


 int ARCHIVE_FATAL ;
 scalar_t__ ENOMEM ;
 int __archive_errx (int,char*) ;
 int archive_acl_next (int ,int *,int,int*,int*,int*,int*,char const**) ;
 scalar_t__ errno ;

int
archive_entry_acl_next(struct archive_entry *entry, int want_type, int *type,
    int *permset, int *tag, int *id, const char **name)
{
 int r;
 r = archive_acl_next(entry->archive, &entry->acl, want_type, type,
  permset, tag, id, name);
 if (r == ARCHIVE_FATAL && errno == ENOMEM)
  __archive_errx(1, "No memory");
 return (r);
}
