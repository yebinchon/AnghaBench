
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_man {TYPE_1__* last; } ;
typedef enum margserr { ____Placeholder_margserr } margserr ;
struct TYPE_2__ {int flags; } ;


 int ARGS_ALLOC ;
 int ARGS_EOLN ;
 int DELIM_MAX ;
 int NODE_EOS ;
 int TOKEN_NONE ;
 int dword (struct roff_man*,int,int,char*,int ,int) ;
 int free (char*) ;
 scalar_t__ mandoc_eos (char*,int ) ;
 int mdoc_args (struct roff_man*,int,int*,char*,int ,char**) ;
 int strlen (char*) ;

__attribute__((used)) static void
append_delims(struct roff_man *mdoc, int line, int *pos, char *buf)
{
 char *p;
 int la;
 enum margserr ac;

 if (buf[*pos] == '\0')
  return;

 for (;;) {
  la = *pos;
  ac = mdoc_args(mdoc, line, pos, buf, TOKEN_NONE, &p);
  if (ac == ARGS_EOLN)
   break;
  dword(mdoc, line, la, p, DELIM_MAX, 1);
  if (mandoc_eos(p, strlen(p)))
   mdoc->last->flags |= NODE_EOS;
  if (ac == ARGS_ALLOC)
   free(p);
 }
}
