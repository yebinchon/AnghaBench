
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
struct ucl_parser {int * last_comment; } ;


 int DL_APPEND (int *,int *) ;
 int * ucl_object_fromstring_common (char const*,size_t,int ) ;

__attribute__((used)) static void
ucl_save_comment (struct ucl_parser *parser, const char *begin, size_t len)
{
 ucl_object_t *nobj;

 if (len > 0 && begin != ((void*)0)) {
  nobj = ucl_object_fromstring_common (begin, len, 0);

  if (parser->last_comment) {

   DL_APPEND (parser->last_comment, nobj);
  }
  else {
   parser->last_comment = nobj;
  }
 }
}
