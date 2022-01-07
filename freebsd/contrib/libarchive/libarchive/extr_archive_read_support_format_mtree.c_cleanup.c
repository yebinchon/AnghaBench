
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtree_entry {struct mtree_entry* buff; int resolver; int contents_name; int current_dir; int line; int options; struct mtree_entry* name; struct mtree_entry* next; struct mtree_entry* entries; } ;
struct mtree {struct mtree* buff; int resolver; int contents_name; int current_dir; int line; int options; struct mtree* name; struct mtree* next; struct mtree* entries; } ;
struct archive_read {TYPE_1__* format; } ;
struct TYPE_2__ {int * data; } ;


 int ARCHIVE_OK ;
 int archive_entry_linkresolver_free (int ) ;
 int archive_string_free (int *) ;
 int free (struct mtree_entry*) ;
 int free_options (int ) ;

__attribute__((used)) static int
cleanup(struct archive_read *a)
{
 struct mtree *mtree;
 struct mtree_entry *p, *q;

 mtree = (struct mtree *)(a->format->data);

 p = mtree->entries;
 while (p != ((void*)0)) {
  q = p->next;
  free(p->name);
  free_options(p->options);
  free(p);
  p = q;
 }
 archive_string_free(&mtree->line);
 archive_string_free(&mtree->current_dir);
 archive_string_free(&mtree->contents_name);
 archive_entry_linkresolver_free(mtree->resolver);

 free(mtree->buff);
 free(mtree);
 (a->format->data) = ((void*)0);
 return (ARCHIVE_OK);
}
