
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {int dummy; } ;
typedef int realbuf ;


 int PATH_MAX ;
 char* dirname (char*) ;
 char* getcwd (char*,int) ;
 int ucl_parser_register_variable (struct ucl_parser*,char*,char*) ;
 int * ucl_realpath (char const*,char*) ;
 int ucl_strlcpy (char*,char const*,int) ;

bool
ucl_parser_set_filevars (struct ucl_parser *parser, const char *filename, bool need_expand)
{
 char realbuf[PATH_MAX], *curdir;

 if (filename != ((void*)0)) {
  if (need_expand) {
   if (ucl_realpath (filename, realbuf) == ((void*)0)) {
    return 0;
   }
  }
  else {
   ucl_strlcpy (realbuf, filename, sizeof (realbuf));
  }


  ucl_parser_register_variable (parser, "FILENAME", realbuf);
  curdir = dirname (realbuf);
  ucl_parser_register_variable (parser, "CURDIR", curdir);
 }
 else {

  curdir = getcwd (realbuf, sizeof (realbuf));
  ucl_parser_register_variable (parser, "FILENAME", "undef");
  ucl_parser_register_variable (parser, "CURDIR", curdir);
 }

 return 1;
}
