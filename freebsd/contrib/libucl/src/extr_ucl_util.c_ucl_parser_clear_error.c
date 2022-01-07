
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucl_parser {scalar_t__ err_code; int * err; } ;


 int utstring_free (int *) ;

void
ucl_parser_clear_error(struct ucl_parser *parser)
{
 if (parser != ((void*)0) && parser->err != ((void*)0)) {
  utstring_free(parser->err);
  parser->err = ((void*)0);
  parser->err_code = 0;
 }
}
