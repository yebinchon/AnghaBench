
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int line; } ;
struct roff_node {scalar_t__ type; char* string; } ;
 int INT_MAX ;
 scalar_t__ ROFFT_TEXT ;
 int assert (int) ;
 int isalpha (unsigned char) ;
 int mandoc_escape (char const**,char const**,int*) ;
 int tag_put (char const*,int,int ) ;

__attribute__((used)) static void
tag_man(struct termp *p, struct roff_node *n)
{
 const char *cp, *arg;
 int prio, sz;

 assert(n->type == ROFFT_TEXT);
 cp = n->string;
 prio = 1;
 for (;;) {
  switch (*cp) {
  case ' ':
  case '\t':
   prio = INT_MAX;

  case '-':
   cp++;
   break;
  case '\\':
   cp++;
   switch (mandoc_escape(&cp, &arg, &sz)) {
   case 134:
   case 129:
   case 131:
   case 132:
   case 130:
   case 133:
    break;
   case 128:
    if (sz != 1)
     return;
    switch (*arg) {
    case '&':
    case '-':
    case 'e':
     break;
    default:
     return;
    }
    break;
   default:
    return;
   }
   break;
  default:
   if (isalpha((unsigned char)*cp))
    tag_put(cp, prio, p->line);
   return;
  }
 }
}
