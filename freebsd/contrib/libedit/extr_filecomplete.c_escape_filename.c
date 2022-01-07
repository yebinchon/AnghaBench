
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char wchar_t ;
struct TYPE_4__ {char* buffer; char* cursor; } ;
struct TYPE_5__ {TYPE_1__ el_line; } ;
typedef TYPE_2__ EditLine ;


 char* el_malloc (size_t) ;
 scalar_t__ needs_dquote_escaping (char) ;
 scalar_t__ needs_escaping (char) ;

__attribute__((used)) static char *
escape_filename(EditLine * el, const char *filename, int single_match,
  const char *(*app_func)(const char *))
{
 size_t original_len = 0;
 size_t escaped_character_count = 0;
 size_t offset = 0;
 size_t newlen;
 const char *s;
 char c;
 size_t s_quoted = 0;
 size_t d_quoted = 0;
 char *escaped_str;
 wchar_t *temp = el->el_line.buffer;
 const char *append_char = ((void*)0);

 if (filename == ((void*)0))
  return ((void*)0);

 while (temp != el->el_line.cursor) {




  if (temp[0] == '\'' && !d_quoted)
   s_quoted = !s_quoted;



  else if (temp[0] == '"' && !s_quoted)
   d_quoted = !d_quoted;
  temp++;
 }




 for (s = filename; *s; s++, original_len++) {
  c = *s;

  if (s_quoted && c == '\'') {
   escaped_character_count += 3;
   continue;
  }

  if (d_quoted && needs_dquote_escaping(c)) {
   escaped_character_count++;
   continue;
  }
  if (!s_quoted && !d_quoted && needs_escaping(c))
   escaped_character_count++;
 }

 newlen = original_len + escaped_character_count + 1;
 if (s_quoted || d_quoted)
  newlen++;

 if (single_match && app_func)
  newlen++;

 if ((escaped_str = el_malloc(newlen)) == ((void*)0))
  return ((void*)0);

 for (s = filename; *s; s++) {
  c = *s;
  if (!needs_escaping(c)) {

   escaped_str[offset++] = c;
   continue;
  }


  if (c == '\'' && s_quoted) {
   escaped_str[offset++] = '\'';
   escaped_str[offset++] = '\\';
   escaped_str[offset++] = '\'';
   escaped_str[offset++] = '\'';
   continue;
  }


  if (s_quoted) {
   escaped_str[offset++] = c;
   continue;
  }




  if (d_quoted && !needs_dquote_escaping(c)) {
   escaped_str[offset++] = c;
   continue;
  }


  escaped_str[offset++] = '\\';
  escaped_str[offset++] = c;
 }

 if (single_match && app_func) {
  escaped_str[offset] = 0;
  append_char = app_func(escaped_str);

  if (append_char[0] == ' ') {
   if (!s_quoted && !d_quoted)
    escaped_str[offset++] = append_char[0];
  } else
   escaped_str[offset++] = append_char[0];
 }


 if (single_match && (append_char && append_char[0] == ' ')) {
  if (s_quoted)
   escaped_str[offset++] = '\'';
  else if (d_quoted)
   escaped_str[offset++] = '"';
 }

 escaped_str[offset] = 0;
 return escaped_str;
}
