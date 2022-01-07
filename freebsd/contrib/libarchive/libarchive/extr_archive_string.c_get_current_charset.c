
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {char* current_code; int current_oemcp; int current_codepage; } ;


 char* default_iconv_charset (char*) ;
 int get_current_codepage () ;
 int get_current_oemcp () ;
 char* strdup (char const*) ;

__attribute__((used)) static const char *
get_current_charset(struct archive *a)
{
 const char *cur_charset;

 if (a == ((void*)0))
  cur_charset = default_iconv_charset("");
 else {
  cur_charset = default_iconv_charset(a->current_code);
  if (a->current_code == ((void*)0)) {
   a->current_code = strdup(cur_charset);
   a->current_codepage = get_current_codepage();
   a->current_oemcp = get_current_oemcp();
  }
 }
 return (cur_charset);
}
