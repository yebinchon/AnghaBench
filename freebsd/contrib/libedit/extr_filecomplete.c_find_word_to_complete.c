
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int* unescape_string (int const*,size_t) ;
 scalar_t__ wcschr (int const*,int const) ;

__attribute__((used)) static wchar_t *
find_word_to_complete(const wchar_t * cursor, const wchar_t * buffer,
    const wchar_t * word_break, const wchar_t * special_prefixes, size_t * length)
{

 const wchar_t *ctemp = cursor;
 size_t len;




 if (ctemp > buffer) {
  switch (ctemp[-1]) {
  case '\\':
  case '\'':
  case '"':
   ctemp--;
   break;
  default:
   break;
  }
 }

 for (;;) {
  if (ctemp <= buffer)
   break;
  if (wcschr(word_break, ctemp[-1])) {
   if (ctemp - buffer >= 2 && ctemp[-2] == '\\') {
    ctemp -= 2;
    continue;
   } else if (ctemp - buffer >= 2 &&
       (ctemp[-2] == '\'' || ctemp[-2] == '"')) {
    ctemp--;
    continue;
   } else
    break;
  }
  if (special_prefixes && wcschr(special_prefixes, ctemp[-1]))
   break;
  ctemp--;
 }

 len = (size_t) (cursor - ctemp);
 if (len == 1 && (ctemp[0] == '\'' || ctemp[0] == '"')) {
  len = 0;
  ctemp++;
 }
 *length = len;
 wchar_t *unescaped_word = unescape_string(ctemp, len);
 if (unescaped_word == ((void*)0))
  return ((void*)0);
 return unescaped_word;
}
