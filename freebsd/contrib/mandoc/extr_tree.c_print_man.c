
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_node {int type; char* string; size_t tok; int flags; int line; int pos; struct roff_node* next; struct roff_node* child; TYPE_1__* eqn; scalar_t__ span; } ;
struct TYPE_2__ {int first; } ;


 int NODE_DELIMC ;
 int NODE_EOS ;
 int NODE_LINE ;
 int NODE_NOFILL ;
 int abort () ;
 int assert (int) ;
 int print_box (int ,int) ;
 int print_span (scalar_t__,int) ;
 int printf (char*,...) ;
 int putchar (char) ;
 char** roff_name ;

__attribute__((used)) static void
print_man(const struct roff_node *n, int indent)
{
 const char *p, *t;
 int i;

 if (n == ((void*)0))
  return;

 t = p = ((void*)0);

 switch (n->type) {
 case 130:
  t = "root";
  break;
 case 133:
  t = "elem";
  break;
 case 128:
  t = "text";
  break;
 case 134:
  t = "comment";
  break;
 case 136:
  t = "block";
  break;
 case 131:
  t = "head";
  break;
 case 135:
  t = "body";
  break;
 case 129:
  break;
 case 132:
  t = "eqn";
  break;
 default:
  abort();
 }

 switch (n->type) {
 case 128:
 case 134:
  p = n->string;
  break;
 case 133:
 case 136:
 case 131:
 case 135:
  p = roff_name[n->tok];
  break;
 case 130:
  p = "root";
  break;
 case 129:
  break;
 case 132:
  p = "EQ";
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
  printf("%s (%s) ", p, t);
  if (n->flags & NODE_LINE)
   putchar('*');
  printf("%d:%d", n->line, n->pos + 1);
  if (n->flags & NODE_DELIMC)
   putchar(')');
  if (n->flags & NODE_EOS)
   putchar('.');
  if (n->flags & NODE_NOFILL)
   printf(" NOFILL");
  putchar('\n');
 }

 if (n->eqn)
  print_box(n->eqn->first, indent + 4);
 if (n->child)
  print_man(n->child, indent +
      (n->type == 136 ? 2 : 4));
 if (n->next)
  print_man(n->next, indent);
}
