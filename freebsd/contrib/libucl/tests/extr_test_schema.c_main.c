
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
typedef int * ucl_object_iter_t ;
struct ucl_parser {int dummy; } ;


 int EXIT_FAILURE ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int perform_tests (int const*) ;
 int read_stdin (char**) ;
 int stdout ;
 int * ucl_object_iterate (int *,int **,int) ;
 int ucl_object_unref (int *) ;
 int ucl_parser_add_string (struct ucl_parser*,char*,int ) ;
 int ucl_parser_free (struct ucl_parser*) ;
 char* ucl_parser_get_error (struct ucl_parser*) ;
 int * ucl_parser_get_object (struct ucl_parser*) ;
 struct ucl_parser* ucl_parser_new (int ) ;

int
main (int argc, char **argv)
{
 char *buf = ((void*)0);
 struct ucl_parser *parser;
 ucl_object_t *obj = ((void*)0);
 const ucl_object_t *elt;
 ucl_object_iter_t iter = ((void*)0);
 int ret = 0;

 if (read_stdin (&buf) == -1) {
  exit (EXIT_FAILURE);
 }

 parser = ucl_parser_new (0);

 ucl_parser_add_string (parser, buf, 0);

 if (ucl_parser_get_error (parser) != ((void*)0)) {
  fprintf (stdout, "Error occurred: %s\n", ucl_parser_get_error (parser));
  ret = 1;
  return EXIT_FAILURE;
 }
 obj = ucl_parser_get_object (parser);
 ucl_parser_free (parser);

 while ((elt = ucl_object_iterate (obj, &iter, 1)) != ((void*)0)) {
  ret = perform_tests (elt);
  if (ret != 0) {
   break;
  }
 }

 ucl_object_unref (obj);

 return ret;
}
