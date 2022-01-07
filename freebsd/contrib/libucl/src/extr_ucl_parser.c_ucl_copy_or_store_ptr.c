
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {int flags; int err; int * variables; } ;
typedef int ssize_t ;


 unsigned char* UCL_ALLOC (size_t) ;
 int UCL_EINTERNAL ;
 int UCL_FREE (size_t,unsigned char*) ;
 int UCL_PARSER_ZEROCOPY ;
 int ucl_expand_variable (struct ucl_parser*,unsigned char**,unsigned char*,int) ;
 int ucl_set_err (struct ucl_parser*,int ,char*,int *) ;
 int ucl_strlcpy_tolower (unsigned char*,unsigned char const*,size_t) ;
 int ucl_strlcpy_unsafe (unsigned char*,unsigned char const*,size_t) ;
 int ucl_unescape_json_string (unsigned char*,int) ;

__attribute__((used)) static inline ssize_t
ucl_copy_or_store_ptr (struct ucl_parser *parser,
  const unsigned char *src, unsigned char **dst,
  const char **dst_const, size_t in_len,
  bool need_unescape, bool need_lowercase, bool need_expand)
{
 ssize_t ret = -1, tret;
 unsigned char *tmp;

 if (need_unescape || need_lowercase ||
   (need_expand && parser->variables != ((void*)0)) ||
   !(parser->flags & UCL_PARSER_ZEROCOPY)) {

  *dst = UCL_ALLOC (in_len + 1);
  if (*dst == ((void*)0)) {
   ucl_set_err (parser, UCL_EINTERNAL, "cannot allocate memory for a string",
     &parser->err);
   return 0;
  }
  if (need_lowercase) {
   ret = ucl_strlcpy_tolower (*dst, src, in_len + 1);
  }
  else {
   ret = ucl_strlcpy_unsafe (*dst, src, in_len + 1);
  }

  if (need_unescape) {
   ret = ucl_unescape_json_string (*dst, ret);
  }
  if (need_expand) {
   tmp = *dst;
   tret = ret;
   ret = ucl_expand_variable (parser, dst, tmp, ret);
   if (*dst == ((void*)0)) {

    *dst = tmp;
    ret = tret;
   }
   else {

    UCL_FREE (in_len + 1, tmp);
   }
  }
  *dst_const = *dst;
 }
 else {
  *dst_const = src;
  ret = in_len;
 }

 return ret;
}
