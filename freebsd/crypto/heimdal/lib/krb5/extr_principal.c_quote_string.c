
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_char (char*,size_t,size_t,char const) ;
 char const* quotable_chars ;
 char const* replace_chars ;
 char* strchr (char const*,char const) ;

__attribute__((used)) static size_t
quote_string(const char *s, char *out, size_t idx, size_t len, int display)
{
    const char *p, *q;
    for(p = s; *p && idx < len; p++){
 q = strchr(quotable_chars, *p);
 if (q && display) {
     add_char(out, idx, len, replace_chars[q - quotable_chars]);
 } else if (q) {
     add_char(out, idx, len, '\\');
     add_char(out, idx, len, replace_chars[q - quotable_chars]);
 }else
     add_char(out, idx, len, *p);
    }
    if(idx < len)
 out[idx] = '\0';
    return idx;
}
