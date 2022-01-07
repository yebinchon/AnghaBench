
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_node {scalar_t__ type; scalar_t__ tok; struct roff_node* next; struct roff_node* child; int string; TYPE_1__* parent; } ;
struct roff_meta {int title; } ;
struct mpage {int name_head_done; int * desc; } ;
struct TYPE_2__ {struct roff_node* head; } ;


 scalar_t__ MAN_SH ;
 int NAME_HEAD ;
 int NAME_TITLE ;
 scalar_t__ ROFFT_BODY ;
 scalar_t__ ROFFT_TEXT ;
 int assert (int) ;
 int deroff (char**,struct roff_node const*) ;
 int free (char*) ;
 scalar_t__ isspace (unsigned char) ;
 int * mandoc_strndup (char*,int) ;
 int putkey (struct mpage*,char*,int ) ;
 scalar_t__ strcasecmp (char*,int ) ;
 scalar_t__ strcmp (int ,char*) ;
 size_t strcspn (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static void
parse_man(struct mpage *mpage, const struct roff_meta *meta,
 const struct roff_node *n)
{
 const struct roff_node *head, *body;
 char *start, *title;
 char byte;
 size_t sz;

 if (n == ((void*)0))
  return;
 if (n->type == ROFFT_BODY && n->tok == MAN_SH) {
  body = n;
  if ((head = body->parent->head) != ((void*)0) &&
      (head = head->child) != ((void*)0) &&
      head->next == ((void*)0) &&
      head->type == ROFFT_TEXT &&
      strcmp(head->string, "NAME") == 0 &&
      body->child != ((void*)0)) {
   title = ((void*)0);
   deroff(&title, body);
   if (((void*)0) == title)
    return;
   start = title;
   for ( ;; ) {
    sz = strcspn(start, " ,");
    if ('\0' == start[sz])
     break;

    byte = start[sz];
    start[sz] = '\0';






    if ('-' == start[0] ||
        ('\\' == start[0] && '-' == start[1]))
     break;

    putkey(mpage, start, NAME_TITLE);
    if ( ! (mpage->name_head_done ||
        strcasecmp(start, meta->title))) {
     putkey(mpage, start, NAME_HEAD);
     mpage->name_head_done = 1;
    }

    if (' ' == byte) {
     start += sz + 1;
     break;
    }

    assert(',' == byte);
    start += sz + 1;
    while (' ' == *start)
     start++;
   }

   if (start == title) {
    putkey(mpage, start, NAME_TITLE);
    if ( ! (mpage->name_head_done ||
        strcasecmp(start, meta->title))) {
     putkey(mpage, start, NAME_HEAD);
     mpage->name_head_done = 1;
    }
    free(title);
    return;
   }

   while (isspace((unsigned char)*start))
    start++;

   if (0 == strncmp(start, "-", 1))
    start += 1;
   else if (0 == strncmp(start, "\\-\\-", 4))
    start += 4;
   else if (0 == strncmp(start, "\\-", 2))
    start += 2;
   else if (0 == strncmp(start, "\\(en", 4))
    start += 4;
   else if (0 == strncmp(start, "\\(em", 4))
    start += 4;

   while (' ' == *start)
    start++;






   mpage->desc = mandoc_strndup(start, 150);
   free(title);
   return;
  }
 }

 for (n = n->child; n; n = n->next) {
  if (((void*)0) != mpage->desc)
   break;
  parse_man(mpage, meta, n);
 }
}
