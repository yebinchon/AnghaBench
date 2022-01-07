
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {int dummy; } ;
struct ucl_chunk {unsigned char* pos; unsigned char const* end; int remain; int column; } ;


 scalar_t__ memcmp (unsigned char const*,unsigned char const*,int) ;
 int ucl_chunk_skipc (struct ucl_chunk*,unsigned char const*) ;

__attribute__((used)) static int
ucl_parse_multiline_string (struct ucl_parser *parser,
  struct ucl_chunk *chunk, const unsigned char *term,
  int term_len, unsigned char const **beg,
  bool *var_expand)
{
 const unsigned char *p, *c, *tend;
 bool newline = 0;
 int len = 0;

 p = chunk->pos;

 c = p;

 while (p < chunk->end) {
  if (newline) {
   if (chunk->end - p < term_len) {
    return 0;
   }
   else if (memcmp (p, term, term_len) == 0) {
    tend = p + term_len;
    if (*tend != '\n' && *tend != ';' && *tend != ',') {

     ucl_chunk_skipc (chunk, p);
     continue;
    }
    len = p - c;
    chunk->remain -= term_len;
    chunk->pos = p + term_len;
    chunk->column = term_len;
    *beg = c;
    break;
   }
  }
  if (*p == '\n') {
   newline = 1;
  }
  else {
   if (*p == '$') {
    *var_expand = 1;
   }
   newline = 0;
  }
  ucl_chunk_skipc (chunk, p);
 }

 return len;
}
