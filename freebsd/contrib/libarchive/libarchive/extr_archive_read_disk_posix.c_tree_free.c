
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int max_filesystem_id; struct tree* filesystem_table; struct tree* allocation_ptr; struct tree* sparse_list; struct tree* dirent; int path; } ;


 int archive_string_free (int *) ;
 int free (struct tree*) ;

__attribute__((used)) static void
tree_free(struct tree *t)
{
 int i;

 if (t == ((void*)0))
  return;
 archive_string_free(&t->path);



 free(t->sparse_list);
 for (i = 0; i < t->max_filesystem_id; i++)
  free(t->filesystem_table[i].allocation_ptr);
 free(t->filesystem_table);
 free(t);
}
