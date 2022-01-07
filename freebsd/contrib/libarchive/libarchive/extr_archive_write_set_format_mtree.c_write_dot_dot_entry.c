
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int length; int s; } ;
struct mtree_writer {int depth; TYPE_3__ buf; scalar_t__ dironly; TYPE_3__ ebuf; scalar_t__ indent; } ;
struct TYPE_8__ {int s; } ;
struct TYPE_7__ {int s; } ;
struct mtree_entry {TYPE_2__ basename; TYPE_1__ parentdir; } ;
struct archive_write {struct mtree_writer* format_data; } ;


 int ARCHIVE_OK ;
 int __archive_write_output (struct archive_write*,int ,int) ;
 int archive_strappend_char (TYPE_3__*,char) ;
 int archive_string_empty (TYPE_3__*) ;
 int archive_string_sprintf (TYPE_3__*,char*,int ,int ) ;
 int archive_strncat (TYPE_3__*,char*,int) ;
 int mtree_indent (struct mtree_writer*) ;

__attribute__((used)) static int
write_dot_dot_entry(struct archive_write *a, struct mtree_entry *n)
{
 struct mtree_writer *mtree = a->format_data;
 int ret;

 if (n->parentdir.s) {
  if (mtree->indent) {
   int i, pd = mtree->depth * 4;
   for (i = 0; i < pd; i++)
    archive_strappend_char(&mtree->buf, ' ');
  }
  archive_string_sprintf(&mtree->buf, "# %s/%s\n",
   n->parentdir.s, n->basename.s);
 }

 if (mtree->indent) {
  archive_string_empty(&mtree->ebuf);
  archive_strncat(&mtree->ebuf, "..\n\n", (mtree->dironly)?3:4);
  mtree_indent(mtree);
 } else
  archive_strncat(&mtree->buf, "..\n\n", (mtree->dironly)?3:4);

 if (mtree->buf.length > 32768) {
  ret = __archive_write_output(
   a, mtree->buf.s, mtree->buf.length);
  archive_string_empty(&mtree->buf);
 } else
  ret = ARCHIVE_OK;
 return (ret);
}
