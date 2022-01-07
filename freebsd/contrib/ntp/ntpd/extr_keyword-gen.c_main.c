
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int generate_fsm () ;
 int generate_preamble () ;
 int generate_token_text () ;
 int populate_symb (char*) ;
 int stderr ;

int main(int argc, char **argv)
{
 if (argc < 2) {
  fprintf(stderr, "Usage:\n%s t_header.h\n", argv[0]);
  exit(1);
 }
 debug = 1;

 populate_symb(argv[1]);

 generate_preamble();
 generate_token_text();
 generate_fsm();

 return 0;
}
