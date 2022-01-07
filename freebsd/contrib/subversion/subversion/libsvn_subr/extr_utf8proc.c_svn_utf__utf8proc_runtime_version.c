
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SVN_UNUSED (int ) ;
 int utf8proc_NFC ;
 int utf8proc_NFD ;
 int utf8proc_NFKC ;
 int utf8proc_NFKD ;
 int utf8proc_category_string ;
 int utf8proc_charwidth ;
 int utf8proc_grapheme_break ;
 int utf8proc_tolower ;
 int utf8proc_totitle ;
 int utf8proc_toupper ;
 char const* utf8proc_version () ;

const char *
svn_utf__utf8proc_runtime_version(void)
{

  SVN_UNUSED(utf8proc_grapheme_break);
  SVN_UNUSED(utf8proc_tolower);
  SVN_UNUSED(utf8proc_toupper);



  SVN_UNUSED(utf8proc_charwidth);
  SVN_UNUSED(utf8proc_category_string);
  SVN_UNUSED(utf8proc_NFD);
  SVN_UNUSED(utf8proc_NFC);
  SVN_UNUSED(utf8proc_NFKD);
  SVN_UNUSED(utf8proc_NFKC);

  return utf8proc_version();
}
