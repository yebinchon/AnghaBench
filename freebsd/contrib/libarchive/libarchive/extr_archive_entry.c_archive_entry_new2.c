
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int ae_symlink_type; struct archive* archive; } ;
struct archive {int dummy; } ;


 int AE_SYMLINK_TYPE_UNDEFINED ;
 scalar_t__ calloc (int,int) ;

struct archive_entry *
archive_entry_new2(struct archive *a)
{
 struct archive_entry *entry;

 entry = (struct archive_entry *)calloc(1, sizeof(*entry));
 if (entry == ((void*)0))
  return (((void*)0));
 entry->archive = a;
 entry->ae_symlink_type = AE_SYMLINK_TYPE_UNDEFINED;
 return (entry);
}
