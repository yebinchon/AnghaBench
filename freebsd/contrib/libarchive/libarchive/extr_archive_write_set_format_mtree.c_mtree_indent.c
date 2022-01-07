
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* s; } ;
struct mtree_writer {int depth; TYPE_1__ ebuf; int buf; scalar_t__ indent; scalar_t__ classic; } ;


 int INDENTNAMELEN ;
 int MAXLINELEN ;
 int archive_strappend_char (int *,char) ;
 int archive_strcat (int *,char const*) ;
 int archive_string_empty (TYPE_1__*) ;
 int archive_strncat (int *,char const*,int) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

__attribute__((used)) static void
mtree_indent(struct mtree_writer *mtree)
{
 int i, fn, nd, pd;
 const char *r, *s, *x;

 if (mtree->classic) {
  if (mtree->indent) {
   nd = 0;
   pd = mtree->depth * 4;
  } else {
   nd = mtree->depth?4:0;
   pd = 0;
  }
 } else
  nd = pd = 0;
 fn = 1;
 s = r = mtree->ebuf.s;
 x = ((void*)0);
 while (*r == ' ')
  r++;
 while ((r = strchr(r, ' ')) != ((void*)0)) {
  if (fn) {
   fn = 0;
   for (i = 0; i < nd + pd; i++)
    archive_strappend_char(&mtree->buf, ' ');
   archive_strncat(&mtree->buf, s, r - s);
   if (nd + (r -s) > INDENTNAMELEN) {
    archive_strncat(&mtree->buf, " \\\n", 3);
    for (i = 0; i < (INDENTNAMELEN + 1 + pd); i++)
     archive_strappend_char(&mtree->buf, ' ');
   } else {
    for (i = (int)(r -s + nd);
        i < (INDENTNAMELEN + 1); i++)
     archive_strappend_char(&mtree->buf, ' ');
   }
   s = ++r;
   x = ((void*)0);
   continue;
  }
  if (pd + (r - s) <= MAXLINELEN - 3 - INDENTNAMELEN)
   x = r++;
  else {
   if (x == ((void*)0))
    x = r;
   archive_strncat(&mtree->buf, s, x - s);
   archive_strncat(&mtree->buf, " \\\n", 3);
   for (i = 0; i < (INDENTNAMELEN + 1 + pd); i++)
    archive_strappend_char(&mtree->buf, ' ');
   s = r = ++x;
   x = ((void*)0);
  }
 }
 if (fn) {
  for (i = 0; i < nd + pd; i++)
   archive_strappend_char(&mtree->buf, ' ');
  archive_strcat(&mtree->buf, s);
  s += strlen(s);
 }
 if (x != ((void*)0) && pd + strlen(s) > MAXLINELEN - 3 - INDENTNAMELEN) {

  archive_strncat(&mtree->buf, s, x - s);
  archive_strncat(&mtree->buf, " \\\n", 3);
  for (i = 0; i < (INDENTNAMELEN + 1 + pd); i++)
   archive_strappend_char(&mtree->buf, ' ');
  s = ++x;
 }
 archive_strcat(&mtree->buf, s);
 archive_string_empty(&mtree->ebuf);
}
