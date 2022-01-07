
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fixup_entry {int name; scalar_t__ fixup; struct fixup_entry* next; } ;
struct archive_write_disk {struct fixup_entry* fixup_list; int archive; } ;


 int ENOMEM ;
 int archive_set_error (int *,int ,char*) ;
 scalar_t__ calloc (int,int) ;
 int strdup (char const*) ;

__attribute__((used)) static struct fixup_entry *
new_fixup(struct archive_write_disk *a, const char *pathname)
{
 struct fixup_entry *fe;

 fe = (struct fixup_entry *)calloc(1, sizeof(struct fixup_entry));
 if (fe == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate memory for a fixup");
  return (((void*)0));
 }
 fe->next = a->fixup_list;
 a->fixup_list = fe;
 fe->fixup = 0;
 fe->name = strdup(pathname);
 return (fe);
}
