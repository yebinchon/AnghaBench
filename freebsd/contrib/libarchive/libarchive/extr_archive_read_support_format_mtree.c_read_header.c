
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {char* s; int length; } ;
struct mtree {int fd; TYPE_3__* this_entry; TYPE_4__ current_dir; int archive_format_name; int archive_format; int * resolver; int * entries; } ;
struct TYPE_6__ {int archive_format_name; int archive_format; } ;
struct archive_read {TYPE_2__ archive; TYPE_1__* format; } ;
struct archive_entry {int dummy; } ;
struct TYPE_7__ {int used; struct TYPE_7__* next; int name; } ;
struct TYPE_5__ {scalar_t__ data; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_FORMAT_MTREE ;
 int ARCHIVE_OK ;
 int * archive_entry_linkresolver_new () ;
 int archive_entry_linkresolver_set_strategy (int *,int ) ;
 scalar_t__ archive_strlen (TYPE_4__*) ;
 int close (int) ;
 int parse_file (struct archive_read*,struct archive_entry*,struct mtree*,TYPE_3__*,int*) ;
 int read_mtree (struct archive_read*,struct mtree*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
read_header(struct archive_read *a, struct archive_entry *entry)
{
 struct mtree *mtree;
 char *p;
 int r, use_next;

 mtree = (struct mtree *)(a->format->data);

 if (mtree->fd >= 0) {
  close(mtree->fd);
  mtree->fd = -1;
 }

 if (mtree->entries == ((void*)0)) {
  mtree->resolver = archive_entry_linkresolver_new();
  if (mtree->resolver == ((void*)0))
   return ARCHIVE_FATAL;
  archive_entry_linkresolver_set_strategy(mtree->resolver,
      ARCHIVE_FORMAT_MTREE);
  r = read_mtree(a, mtree);
  if (r != ARCHIVE_OK)
   return (r);
 }

 a->archive.archive_format = mtree->archive_format;
 a->archive.archive_format_name = mtree->archive_format_name;

 for (;;) {
  if (mtree->this_entry == ((void*)0))
   return (ARCHIVE_EOF);
  if (strcmp(mtree->this_entry->name, "..") == 0) {
   mtree->this_entry->used = 1;
   if (archive_strlen(&mtree->current_dir) > 0) {

    p = mtree->current_dir.s
        + mtree->current_dir.length - 1;
    while (p >= mtree->current_dir.s && *p != '/')
     --p;
    if (p >= mtree->current_dir.s)
     --p;
    mtree->current_dir.length
        = p - mtree->current_dir.s + 1;
   }
  }
  if (!mtree->this_entry->used) {
   use_next = 0;
   r = parse_file(a, entry, mtree, mtree->this_entry,
    &use_next);
   if (use_next == 0)
    return (r);
  }
  mtree->this_entry = mtree->this_entry->next;
 }
}
