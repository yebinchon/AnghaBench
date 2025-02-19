
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_man {int dummy; } ;
typedef enum roff_tok { ____Placeholder_roff_tok } roff_tok ;
typedef enum margserr { ____Placeholder_margserr } margserr ;


 int ARGS_ALLOC ;
 int ARGS_EOLN ;
 int free (char*) ;
 int macro_or_word (struct roff_man*,int,int,int,int*,char*,char*,int) ;
 int mdoc_args (struct roff_man*,int,int*,char*,int,char**) ;

__attribute__((used)) static int
parse_rest(struct roff_man *mdoc, enum roff_tok tok,
    int line, int *pos, char *buf)
{
 char *p;
 int done, la;
 enum margserr ac;

 for (;;) {
  la = *pos;
  ac = mdoc_args(mdoc, line, pos, buf, tok, &p);
  if (ac == ARGS_EOLN)
   return 0;
  done = macro_or_word(mdoc, tok, line, la, pos, buf, p, 1);
  if (ac == ARGS_ALLOC)
   free(p);
  if (done)
   return 1;
 }
}
