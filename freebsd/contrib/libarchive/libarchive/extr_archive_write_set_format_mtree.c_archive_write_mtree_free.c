
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtree_writer {int buf; int ebuf; int cur_dirstr; } ;
struct archive_write {struct mtree_writer* format_data; } ;


 int ARCHIVE_OK ;
 int archive_string_free (int *) ;
 int attr_counter_set_free (struct mtree_writer*) ;
 int free (struct mtree_writer*) ;
 int mtree_entry_register_free (struct mtree_writer*) ;

__attribute__((used)) static int
archive_write_mtree_free(struct archive_write *a)
{
 struct mtree_writer *mtree= a->format_data;

 if (mtree == ((void*)0))
  return (ARCHIVE_OK);


 mtree_entry_register_free(mtree);
 archive_string_free(&mtree->cur_dirstr);
 archive_string_free(&mtree->ebuf);
 archive_string_free(&mtree->buf);
 attr_counter_set_free(mtree);
 free(mtree);
 a->format_data = ((void*)0);
 return (ARCHIVE_OK);
}
