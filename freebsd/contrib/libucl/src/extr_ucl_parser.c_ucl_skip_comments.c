
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {scalar_t__ state; int flags; int err; struct ucl_chunk* chunks; } ;
struct ucl_chunk {unsigned char* pos; int remain; unsigned char const* end; } ;


 int UCL_ENESTED ;
 int UCL_PARSER_SAVE_COMMENTS ;
 scalar_t__ UCL_STATE_MCOMMENT ;
 scalar_t__ UCL_STATE_SCOMMENT ;
 int ucl_chunk_skipc (struct ucl_chunk*,unsigned char const*) ;
 int ucl_save_comment (struct ucl_parser*,unsigned char const*,int) ;
 int ucl_set_err (struct ucl_parser*,int ,char*,int *) ;

__attribute__((used)) static bool
ucl_skip_comments (struct ucl_parser *parser)
{
 struct ucl_chunk *chunk = parser->chunks;
 const unsigned char *p, *beg = ((void*)0);
 int comments_nested = 0;
 bool quoted = 0;

 p = chunk->pos;

start:
 if (chunk->remain > 0 && *p == '#') {
  if (parser->state != UCL_STATE_SCOMMENT &&
    parser->state != UCL_STATE_MCOMMENT) {
   beg = p;

   while (p < chunk->end) {
    if (*p == '\n') {
     if (parser->flags & UCL_PARSER_SAVE_COMMENTS) {
      ucl_save_comment (parser, beg, p - beg);
      beg = ((void*)0);
     }

     ucl_chunk_skipc (chunk, p);

     goto start;
    }
    ucl_chunk_skipc (chunk, p);
   }
  }
 }
 else if (chunk->remain >= 2 && *p == '/') {
  if (p[1] == '*') {
   beg = p;
   ucl_chunk_skipc (chunk, p);
   comments_nested ++;
   ucl_chunk_skipc (chunk, p);

   while (p < chunk->end) {
    if (*p == '"' && *(p - 1) != '\\') {
     quoted = !quoted;
    }

    if (!quoted) {
     if (*p == '*') {
      ucl_chunk_skipc (chunk, p);
      if (*p == '/') {
       comments_nested --;
       if (comments_nested == 0) {
        if (parser->flags & UCL_PARSER_SAVE_COMMENTS) {
         ucl_save_comment (parser, beg, p - beg + 1);
         beg = ((void*)0);
        }

        ucl_chunk_skipc (chunk, p);
        goto start;
       }
      }
      ucl_chunk_skipc (chunk, p);
     }
     else if (p[0] == '/' && chunk->remain >= 2 && p[1] == '*') {
      comments_nested ++;
      ucl_chunk_skipc (chunk, p);
      ucl_chunk_skipc (chunk, p);
      continue;
     }
    }

    ucl_chunk_skipc (chunk, p);
   }
   if (comments_nested != 0) {
    ucl_set_err (parser, UCL_ENESTED,
      "unfinished multiline comment", &parser->err);
    return 0;
   }
  }
 }

 if (beg && p > beg && (parser->flags & UCL_PARSER_SAVE_COMMENTS)) {
  ucl_save_comment (parser, beg, p - beg);
 }

 return 1;
}
