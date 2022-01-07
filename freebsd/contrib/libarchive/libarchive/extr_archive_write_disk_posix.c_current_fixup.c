
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fixup_entry {int dummy; } ;
struct archive_write_disk {struct fixup_entry* current_fixup; } ;


 struct fixup_entry* new_fixup (struct archive_write_disk*,char const*) ;

__attribute__((used)) static struct fixup_entry *
current_fixup(struct archive_write_disk *a, const char *pathname)
{
 if (a->current_fixup == ((void*)0))
  a->current_fixup = new_fixup(a, pathname);
 return (a->current_fixup);
}
