
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {char* string; } ;
struct roff_man {int next; int roff; struct roff_node* last; } ;


 int ROFF_NEXT_SIBLING ;
 int free (char*) ;
 int mandoc_asprintf (char**,char*,char*,char*) ;
 char* roff_strdup (int ,char const*) ;

void
roff_word_append(struct roff_man *man, const char *word)
{
 struct roff_node *n;
 char *addstr, *newstr;

 n = man->last;
 addstr = roff_strdup(man->roff, word);
 mandoc_asprintf(&newstr, "%s %s", n->string, addstr);
 free(addstr);
 free(n->string);
 n->string = newstr;
 man->next = ROFF_NEXT_SIBLING;
}
