
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {int flags; int comments; int * includepaths; } ;


 struct ucl_parser* UCL_ALLOC (int) ;
 int UCL_OBJECT ;
 int UCL_PARSER_NO_FILEVARS ;
 int UCL_PARSER_SAVE_COMMENTS ;
 int memset (struct ucl_parser*,int ,int) ;
 int ucl_include_handler ;
 int ucl_includes_handler ;
 int ucl_inherit_handler ;
 int ucl_load_handler ;
 int ucl_object_typed_new (int ) ;
 int ucl_parser_register_context_macro (struct ucl_parser*,char*,int ,struct ucl_parser*) ;
 int ucl_parser_register_macro (struct ucl_parser*,char*,int ,struct ucl_parser*) ;
 int ucl_parser_set_filevars (struct ucl_parser*,int *,int) ;
 int ucl_priority_handler ;
 int ucl_try_include_handler ;

struct ucl_parser*
ucl_parser_new (int flags)
{
 struct ucl_parser *parser;

 parser = UCL_ALLOC (sizeof (struct ucl_parser));
 if (parser == ((void*)0)) {
  return ((void*)0);
 }

 memset (parser, 0, sizeof (struct ucl_parser));

 ucl_parser_register_macro (parser, "include", ucl_include_handler, parser);
 ucl_parser_register_macro (parser, "try_include", ucl_try_include_handler, parser);
 ucl_parser_register_macro (parser, "includes", ucl_includes_handler, parser);
 ucl_parser_register_macro (parser, "priority", ucl_priority_handler, parser);
 ucl_parser_register_macro (parser, "load", ucl_load_handler, parser);
 ucl_parser_register_context_macro (parser, "inherit", ucl_inherit_handler, parser);

 parser->flags = flags;
 parser->includepaths = ((void*)0);

 if (flags & UCL_PARSER_SAVE_COMMENTS) {
  parser->comments = ucl_object_typed_new (UCL_OBJECT);
 }

 if (!(flags & UCL_PARSER_NO_FILEVARS)) {

  ucl_parser_set_filevars (parser, ((void*)0), 0);
 }

 return parser;
}
