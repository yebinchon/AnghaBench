
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum language { ____Placeholder_language } language ;
struct TYPE_2__ {int lang; int ext; } ;


 TYPE_1__* filename_language_table ;
 int fl_table_next ;
 int language_unknown ;
 scalar_t__ strcmp (char*,int ) ;
 char* strrchr (char*,char) ;

enum language
deduce_language_from_filename (char *filename)
{
  int i;
  char *cp;

  if (filename != ((void*)0))
    if ((cp = strrchr (filename, '.')) != ((void*)0))
      for (i = 0; i < fl_table_next; i++)
 if (strcmp (cp, filename_language_table[i].ext) == 0)
   return filename_language_table[i].lang;

  return language_unknown;
}
