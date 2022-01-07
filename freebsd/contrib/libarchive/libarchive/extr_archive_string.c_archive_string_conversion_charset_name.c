
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string_conv {int flag; char const* to_charset; char const* from_charset; } ;


 int SCONV_TO_CHARSET ;

const char *
archive_string_conversion_charset_name(struct archive_string_conv *sc)
{
 if (sc->flag & SCONV_TO_CHARSET)
  return (sc->to_charset);
 else
  return (sc->from_charset);
}
