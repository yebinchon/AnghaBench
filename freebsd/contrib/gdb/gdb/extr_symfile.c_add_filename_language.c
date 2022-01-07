
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum language { ____Placeholder_language } language ;
struct TYPE_4__ {int lang; int ext; } ;


 TYPE_1__* filename_language_table ;
 int fl_table_next ;
 int fl_table_size ;
 TYPE_1__* xrealloc (TYPE_1__*,int) ;
 int xstrdup (char*) ;

__attribute__((used)) static void
add_filename_language (char *ext, enum language lang)
{
  if (fl_table_next >= fl_table_size)
    {
      fl_table_size += 10;
      filename_language_table =
 xrealloc (filename_language_table,
    fl_table_size * sizeof (*filename_language_table));
    }

  filename_language_table[fl_table_next].ext = xstrdup (ext);
  filename_language_table[fl_table_next].lang = lang;
  fl_table_next++;
}
