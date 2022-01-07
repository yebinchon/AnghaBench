
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum language { ____Placeholder_language } language ;
struct TYPE_2__ {int lang; int ext; } ;


 int add_filename_language (char*,int) ;
 int error (char*,char*) ;
 char* ext_args ;
 TYPE_1__* filename_language_table ;
 int fl_table_next ;
 scalar_t__ isspace (char) ;
 int language_enum (char*) ;
 scalar_t__ strcmp (char*,int ) ;
 int xfree (int ) ;
 int xstrdup (char*) ;

__attribute__((used)) static void
set_ext_lang_command (char *args, int from_tty)
{
  int i;
  char *cp = ext_args;
  enum language lang;


  if (*cp != '.')
    error ("'%s': Filename extension must begin with '.'", ext_args);


  while (*cp && !isspace (*cp))
    cp++;

  if (*cp == '\0')
    error ("'%s': two arguments required -- filename extension and language",
    ext_args);


  *cp++ = '\0';


  while (*cp && isspace (*cp))
    cp++;

  if (*cp == '\0')
    error ("'%s': two arguments required -- filename extension and language",
    ext_args);


  lang = language_enum (cp);


  for (i = 0; i < fl_table_next; i++)
    if (0 == strcmp (ext_args, filename_language_table[i].ext))
      break;

  if (i >= fl_table_next)
    {

      add_filename_language (ext_args, lang);
    }
  else
    {






      xfree (filename_language_table[i].ext);
      filename_language_table[i].ext = xstrdup (ext_args);
      filename_language_table[i].lang = lang;
    }
}
