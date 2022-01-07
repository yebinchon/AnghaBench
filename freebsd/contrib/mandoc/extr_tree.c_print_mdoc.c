
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct roff_node {int type; char* string; size_t tok; int flags; int line; int pos; struct roff_node* next; struct roff_node* child; TYPE_2__* eqn; scalar_t__ span; TYPE_1__* args; int end; } ;
struct mdoc_argv {size_t arg; scalar_t__ sz; char** value; } ;
struct TYPE_4__ {int first; } ;
struct TYPE_3__ {size_t argc; struct mdoc_argv* argv; } ;


 int NODE_BROKEN ;
 int NODE_DELIMC ;
 int NODE_DELIMO ;
 int NODE_EOS ;
 int NODE_LINE ;
 int NODE_NOFILL ;
 int NODE_NOPRT ;
 int NODE_NOSRC ;
 int abort () ;
 int assert (int) ;
 char** mdoc_argnames ;
 int print_box (int ,int) ;
 int print_span (scalar_t__,int) ;
 int printf (char*,...) ;
 int putchar (char) ;
 char** roff_name ;

__attribute__((used)) static void
print_mdoc(const struct roff_node *n, int indent)
{
 const char *p, *t;
 int i, j;
 size_t argc;
 struct mdoc_argv *argv;

 if (n == ((void*)0))
  return;

 argv = ((void*)0);
 argc = 0;
 t = p = ((void*)0);

 switch (n->type) {
 case 131:
  t = "root";
  break;
 case 137:
  t = "block";
  break;
 case 132:
  t = "head";
  break;
 case 136:
  if (n->end)
   t = "body-end";
  else
   t = "body";
  break;
 case 130:
  t = "tail";
  break;
 case 134:
  t = "elem";
  break;
 case 128:
  t = "text";
  break;
 case 135:
  t = "comment";
  break;
 case 129:
  break;
 case 133:
  t = "eqn";
  break;
 default:
  abort();
 }

 switch (n->type) {
 case 128:
 case 135:
  p = n->string;
  break;
 case 136:
  p = roff_name[n->tok];
  break;
 case 132:
  p = roff_name[n->tok];
  break;
 case 130:
  p = roff_name[n->tok];
  break;
 case 134:
  p = roff_name[n->tok];
  if (n->args) {
   argv = n->args->argv;
   argc = n->args->argc;
  }
  break;
 case 137:
  p = roff_name[n->tok];
  if (n->args) {
   argv = n->args->argv;
   argc = n->args->argc;
  }
  break;
 case 129:
  break;
 case 133:
  p = "EQ";
  break;
 case 131:
  p = "root";
  break;
 default:
  abort();
 }

 if (n->span) {
  assert(((void*)0) == p && ((void*)0) == t);
  print_span(n->span, indent);
 } else {
  for (i = 0; i < indent; i++)
   putchar(' ');

  printf("%s (%s)", p, t);

  for (i = 0; i < (int)argc; i++) {
   printf(" -%s", mdoc_argnames[argv[i].arg]);
   if (argv[i].sz > 0)
    printf(" [");
   for (j = 0; j < (int)argv[i].sz; j++)
    printf(" [%s]", argv[i].value[j]);
   if (argv[i].sz > 0)
    printf(" ]");
  }

  putchar(' ');
  if (n->flags & NODE_DELIMO)
   putchar('(');
  if (n->flags & NODE_LINE)
   putchar('*');
  printf("%d:%d", n->line, n->pos + 1);
  if (n->flags & NODE_DELIMC)
   putchar(')');
  if (n->flags & NODE_EOS)
   putchar('.');
  if (n->flags & NODE_BROKEN)
   printf(" BROKEN");
  if (n->flags & NODE_NOFILL)
   printf(" NOFILL");
  if (n->flags & NODE_NOSRC)
   printf(" NOSRC");
  if (n->flags & NODE_NOPRT)
   printf(" NOPRT");
  putchar('\n');
 }

 if (n->eqn)
  print_box(n->eqn->first, indent + 4);
 if (n->child)
  print_mdoc(n->child, indent +
      (n->type == 137 ? 2 : 4));
 if (n->next)
  print_mdoc(n->next, indent);
}
