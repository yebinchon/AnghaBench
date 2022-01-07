
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Tokenizer ;


 int e ;
 int el_parse (int ,int,char const**) ;
 int tok_end (int *) ;
 int * tok_init (int *) ;
 int tok_str (int *,char const*,int*,char const***) ;

int
rl_parse_and_bind(const char *line)
{
 const char **argv;
 int argc;
 Tokenizer *tok;

 tok = tok_init(((void*)0));
 tok_str(tok, line, &argc, &argv);
 argc = el_parse(e, argc, argv);
 tok_end(tok);
 return argc ? 1 : 0;
}
