
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {int* s; } ;
struct lha {TYPE_1__ ws; } ;
struct archive_entry {int dummy; } ;


 int archive_entry_copy_pathname_w (struct archive_entry*,int*) ;
 int archive_entry_copy_symlink_w (struct archive_entry*,int*) ;
 int * archive_entry_pathname_w (struct archive_entry*) ;
 int * archive_entry_symlink_w (struct archive_entry*) ;
 size_t archive_strlen (TYPE_1__*) ;
 int archive_wstrcpy (TYPE_1__*,int const*) ;

__attribute__((used)) static void
lha_replace_path_separator(struct lha *lha, struct archive_entry *entry)
{
 const wchar_t *wp;
 size_t i;

 if ((wp = archive_entry_pathname_w(entry)) != ((void*)0)) {
  archive_wstrcpy(&(lha->ws), wp);
  for (i = 0; i < archive_strlen(&(lha->ws)); i++) {
   if (lha->ws.s[i] == L'\\')
    lha->ws.s[i] = L'/';
  }
  archive_entry_copy_pathname_w(entry, lha->ws.s);
 }

 if ((wp = archive_entry_symlink_w(entry)) != ((void*)0)) {
  archive_wstrcpy(&(lha->ws), wp);
  for (i = 0; i < archive_strlen(&(lha->ws)); i++) {
   if (lha->ws.s[i] == L'\\')
    lha->ws.s[i] = L'/';
  }
  archive_entry_copy_symlink_w(entry, lha->ws.s);
 }
}
