
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct roff_node {scalar_t__ type; char* string; struct roff_node* next; } ;
struct roff_meta {char* title; char* msec; char* date; char* os; char* vol; TYPE_1__* first; } ;
struct TYPE_4__ {int size; char* head; char* tail; } ;
struct TYPE_3__ {struct roff_node* child; } ;


 int MMAN_Sm ;
 int MMAN_nl ;
 scalar_t__ ROFFT_COMMENT ;
 TYPE_2__ fontqueue ;
 char* mandoc_malloc (int) ;
 int outflags ;
 int print_node (struct roff_meta const*,struct roff_node*) ;
 int printf (char*,...) ;
 int putchar (char) ;

void
man_mdoc(void *arg, const struct roff_meta *mdoc)
{
 struct roff_node *n;

 printf(".\\\" Automatically generated from an mdoc input file."
     "  Do not edit.\n");
 for (n = mdoc->first->child; n != ((void*)0); n = n->next) {
  if (n->type != ROFFT_COMMENT)
   break;
  printf(".\\\"%s\n", n->string);
 }

 printf(".TH \"%s\" \"%s\" \"%s\" \"%s\" \"%s\"\n",
     mdoc->title, (mdoc->msec == ((void*)0) ? "" : mdoc->msec),
     mdoc->date, mdoc->os, mdoc->vol);


 printf(".nh\n.if n .ad l");

 outflags = MMAN_nl | MMAN_Sm;
 if (0 == fontqueue.size) {
  fontqueue.size = 8;
  fontqueue.head = fontqueue.tail = mandoc_malloc(8);
  *fontqueue.tail = 'R';
 }
 for (; n != ((void*)0); n = n->next)
  print_node(mdoc, n);
 putchar('\n');
}
