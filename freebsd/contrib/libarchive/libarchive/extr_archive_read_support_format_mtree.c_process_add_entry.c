
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtree_option {char const* value; struct mtree_option* next; } ;
struct mtree_entry {char* name; int * options; struct mtree_entry* next_dup; int rbnode; scalar_t__ full; struct mtree_entry* next; scalar_t__ used; } ;
struct mtree {int rbtree; struct mtree_entry* entries; } ;
struct archive_read {int archive; } ;
typedef int ssize_t ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 scalar_t__ __archive_rb_tree_find_node (int *,char*) ;
 int __archive_rb_tree_insert_node (int *,int *) ;
 int add_option (struct archive_read*,int **,char const*,int) ;
 int archive_set_error (int *,int ,char*) ;
 int errno ;
 void* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int parse_escapes (char*,struct mtree_entry*) ;
 int remove_option (int **,char const*,size_t) ;
 char* strchr (char const*,char) ;
 size_t strcspn (char const*,char*) ;
 int strlen (char const*) ;
 int strspn (char const*,char*) ;

__attribute__((used)) static int
process_add_entry(struct archive_read *a, struct mtree *mtree,
    struct mtree_option **global, const char *line, ssize_t line_len,
    struct mtree_entry **last_entry, int is_form_d)
{
 struct mtree_entry *entry;
 struct mtree_option *iter;
 const char *next, *eq, *name, *end;
 size_t name_len, len;
 int r, i;

 if ((entry = malloc(sizeof(*entry))) == ((void*)0)) {
  archive_set_error(&a->archive, errno, "Can't allocate memory");
  return (ARCHIVE_FATAL);
 }
 entry->next = ((void*)0);
 entry->options = ((void*)0);
 entry->name = ((void*)0);
 entry->used = 0;
 entry->full = 0;


 if (*last_entry == ((void*)0))
  mtree->entries = entry;
 else
  (*last_entry)->next = entry;
 *last_entry = entry;

 if (is_form_d) {


  while (line_len > 0) {
   char last_character = line[line_len - 1];
   if (last_character == '\r'
       || last_character == '\n'
       || last_character == '\t'
       || last_character == ' ') {
    line_len--;
   } else {
    break;
   }
  }

  name = line;
  for (i = 0; i < line_len; i++) {
   if (line[i] == '\r'
       || line[i] == '\n'
       || line[i] == '\t'
       || line[i] == ' ') {
    name = line + i + 1;
   }
  }
  name_len = line + line_len - name;
  end = name;
 } else {

  name_len = strcspn(line, " \t\r\n");
  name = line;
  line += name_len;
  end = line + line_len;
 }



 if ((entry->name = malloc(name_len + 1)) == ((void*)0)) {
  archive_set_error(&a->archive, errno, "Can't allocate memory");
  return (ARCHIVE_FATAL);
 }

 memcpy(entry->name, name, name_len);
 entry->name[name_len] = '\0';
 parse_escapes(entry->name, entry);

 entry->next_dup = ((void*)0);
 if (entry->full) {
  if (!__archive_rb_tree_insert_node(&mtree->rbtree, &entry->rbnode)) {
   struct mtree_entry *alt;
   alt = (struct mtree_entry *)__archive_rb_tree_find_node(
       &mtree->rbtree, entry->name);
   while (alt->next_dup)
    alt = alt->next_dup;
   alt->next_dup = entry;
  }
 }

 for (iter = *global; iter != ((void*)0); iter = iter->next) {
  r = add_option(a, &entry->options, iter->value,
      strlen(iter->value));
  if (r != ARCHIVE_OK)
   return (r);
 }

 for (;;) {
  next = line + strspn(line, " \t\r\n");
  if (*next == '\0')
   return (ARCHIVE_OK);
  if (next >= end)
   return (ARCHIVE_OK);
  line = next;
  next = line + strcspn(line, " \t\r\n");
  eq = strchr(line, '=');
  if (eq == ((void*)0) || eq > next)
   len = next - line;
  else
   len = eq - line;

  remove_option(&entry->options, line, len);
  r = add_option(a, &entry->options, line, next - line);
  if (r != ARCHIVE_OK)
   return (r);
  line = next;
 }
}
