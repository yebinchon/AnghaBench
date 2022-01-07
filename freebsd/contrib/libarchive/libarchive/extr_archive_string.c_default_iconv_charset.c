
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CODESET ;
 char const* locale_charset () ;
 char const* nl_langinfo (int ) ;

__attribute__((used)) static const char *
default_iconv_charset(const char *charset) {
 if (charset != ((void*)0) && charset[0] != '\0')
  return charset;






 return "";

}
