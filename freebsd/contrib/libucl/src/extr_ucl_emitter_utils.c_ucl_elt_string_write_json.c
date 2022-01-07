
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_emitter_functions {int ud; int (* ucl_emitter_append_character ) (char,int,int ) ;int (* ucl_emitter_append_len ) (char const*,size_t,int ) ;} ;
struct ucl_emitter_context {struct ucl_emitter_functions* func; } ;


 int UCL_CHARACTER_DENIED ;
 int UCL_CHARACTER_JSON_UNSAFE ;
 int stub1 (char,int,int ) ;
 int stub10 (char*,int,int ) ;
 int stub11 (char const*,size_t,int ) ;
 int stub12 (char,int,int ) ;
 int stub2 (char const*,size_t,int ) ;
 int stub3 (char*,int,int ) ;
 int stub4 (char*,int,int ) ;
 int stub5 (char*,int,int ) ;
 int stub6 (char*,int,int ) ;
 int stub7 (char*,int,int ) ;
 int stub8 (char*,int,int ) ;
 int stub9 (char*,int,int ) ;
 scalar_t__ ucl_test_character (char const,int) ;

void
ucl_elt_string_write_json (const char *str, size_t size,
  struct ucl_emitter_context *ctx)
{
 const char *p = str, *c = str;
 size_t len = 0;
 const struct ucl_emitter_functions *func = ctx->func;

 func->ucl_emitter_append_character ('"', 1, func->ud);

 while (size) {
  if (ucl_test_character (*p, UCL_CHARACTER_JSON_UNSAFE|UCL_CHARACTER_DENIED)) {
   if (len > 0) {
    func->ucl_emitter_append_len (c, len, func->ud);
   }
   switch (*p) {
   case '\n':
    func->ucl_emitter_append_len ("\\n", 2, func->ud);
    break;
   case '\r':
    func->ucl_emitter_append_len ("\\r", 2, func->ud);
    break;
   case '\b':
    func->ucl_emitter_append_len ("\\b", 2, func->ud);
    break;
   case '\t':
    func->ucl_emitter_append_len ("\\t", 2, func->ud);
    break;
   case '\f':
    func->ucl_emitter_append_len ("\\f", 2, func->ud);
    break;
   case '\\':
    func->ucl_emitter_append_len ("\\\\", 2, func->ud);
    break;
   case '"':
    func->ucl_emitter_append_len ("\\\"", 2, func->ud);
    break;
   default:

    func->ucl_emitter_append_len ("\\uFFFD", 5, func->ud);
    break;
   }
   len = 0;
   c = ++p;
  }
  else {
   p ++;
   len ++;
  }
  size --;
 }

 if (len > 0) {
  func->ucl_emitter_append_len (c, len, func->ud);
 }

 func->ucl_emitter_append_character ('"', 1, func->ud);
}
