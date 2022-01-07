
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {int s; } ;
struct zip_entry {int node; struct archive_string rsrcname; } ;
struct zip {int tree; int tree_rsrc; } ;


 scalar_t__ __archive_rb_tree_find_node (int *,int ) ;
 int __archive_rb_tree_insert_node (int *,int *) ;
 int __archive_rb_tree_remove_node (int *,int *) ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;
 int archive_strncpy (struct archive_string*,char const*,size_t) ;
 char* strrchr (int ,char) ;

__attribute__((used)) static void
expose_parent_dirs(struct zip *zip, const char *name, size_t name_length)
{
 struct archive_string str;
 struct zip_entry *dir;
 char *s;

 archive_string_init(&str);
 archive_strncpy(&str, name, name_length);
 for (;;) {
  s = strrchr(str.s, '/');
  if (s == ((void*)0))
   break;
  *s = '\0';


  dir = (struct zip_entry *)
      __archive_rb_tree_find_node(&zip->tree_rsrc, str.s);
  if (dir == ((void*)0))
   break;
  __archive_rb_tree_remove_node(&zip->tree_rsrc, &dir->node);
  archive_string_free(&dir->rsrcname);
  __archive_rb_tree_insert_node(&zip->tree, &dir->node);
 }
 archive_string_free(&str);
}
