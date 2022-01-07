
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iso9660 {int hardlink_rbtree; } ;
struct archive_rb_node {int dummy; } ;


 int ARCHIVE_RB_DIR_RIGHT ;
 struct archive_rb_node* ARCHIVE_RB_TREE_MIN (int *) ;
 struct archive_rb_node* __archive_rb_tree_iterate (int *,struct archive_rb_node*,int ) ;
 int free (struct archive_rb_node*) ;

__attribute__((used)) static void
isofile_free_hardlinks(struct iso9660 *iso9660)
{
 struct archive_rb_node *n, *next;

 for (n = ARCHIVE_RB_TREE_MIN(&(iso9660->hardlink_rbtree)); n;) {
  next = __archive_rb_tree_iterate(&(iso9660->hardlink_rbtree),
      n, ARCHIVE_RB_DIR_RIGHT);
  free(n);
  n = next;
 }
}
