
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum quoting_style { ____Placeholder_quoting_style } quoting_style ;


 char* _ (char const*) ;
 int clocale_quoting_style ;

__attribute__((used)) static char const *
gettext_quote (char const *msgid, enum quoting_style s)
{
  char const *translation = _(msgid);
  if (translation == msgid && s == clocale_quoting_style)
    translation = "\"";
  return translation;
}
