
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const ucl_object_t ;
struct ucl_parser {int dummy; } ;
typedef int ssize_t ;
typedef int FILE ;


 int BUFSIZ ;
 int EXIT_FAILURE ;
 int errno ;
 int exit (int ) ;
 int fclose (int *) ;
 int feof (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*) ;
 scalar_t__ fread (unsigned char*,int,int,int *) ;
 unsigned char* malloc (int) ;
 int perror (char*) ;
 int printf (char*,char*) ;
 unsigned char* realloc (unsigned char*,int) ;
 int stderr ;
 int * stdin ;
 int ucl_obj_dump (int const*,int ) ;
 int const* ucl_object_lookup (int const*,char*) ;
 int ucl_object_unref (int const*) ;
 int ucl_parser_add_chunk (struct ucl_parser*,unsigned char*,int) ;
 int ucl_parser_free (struct ucl_parser*) ;
 char* ucl_parser_get_error (struct ucl_parser*) ;
 int const* ucl_parser_get_object (struct ucl_parser*) ;
 struct ucl_parser* ucl_parser_new (int ) ;

int
main(int argc, char **argv)
{
 const char *fn = ((void*)0);
 unsigned char *inbuf;
 struct ucl_parser *parser;
 int k, ret = 0, r = 0;
 ssize_t bufsize;
 ucl_object_t *obj = ((void*)0);
 const ucl_object_t *par;
 FILE *in;

 if (argc > 1) {
  fn = argv[1];
 }

 if (fn != ((void*)0)) {
  in = fopen (fn, "r");
  if (in == ((void*)0)) {
   exit (-errno);
  }
 }
 else {
  in = stdin;
 }

 parser = ucl_parser_new (0);
 inbuf = malloc (BUFSIZ);
 bufsize = BUFSIZ;
 r = 0;

 while (!feof (in) && !ferror (in)) {
  if (r == bufsize) {
   inbuf = realloc (inbuf, bufsize * 2);
   bufsize *= 2;
   if (inbuf == ((void*)0)) {
    perror ("realloc");
    exit (EXIT_FAILURE);
   }
  }
  r += fread (inbuf + r, 1, bufsize - r, in);
 }

 if (ferror (in)) {
  fprintf (stderr, "Failed to read the input file.\n");
  exit (EXIT_FAILURE);
 }

 ucl_parser_add_chunk (parser, inbuf, r);
 fclose (in);
 if (ucl_parser_get_error(parser)) {
  printf ("Error occured: %s\n", ucl_parser_get_error(parser));
  ret = 1;
  goto end;
 }

 obj = ucl_parser_get_object (parser);
 if (ucl_parser_get_error (parser)) {
  printf ("Error occured: %s\n", ucl_parser_get_error(parser));
  ret = 1;
  goto end;
 }

 if (argc > 2) {
  for (k = 2; k < argc; k++) {
   printf ("search for \"%s\"... ", argv[k]);
   par = ucl_object_lookup (obj, argv[k]);
   printf ("%sfound\n", (par == ((void*)0) )?"not ":"");
   ucl_obj_dump (par, 0);
  }
 }
 else {
  ucl_obj_dump (obj, 0);
 }

end:
 if (parser != ((void*)0)) {
  ucl_parser_free (parser);
 }
 if (obj != ((void*)0)) {
  ucl_object_unref (obj);
 }

 return ret;
}
