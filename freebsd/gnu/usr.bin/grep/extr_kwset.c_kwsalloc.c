
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trie {scalar_t__ shift; scalar_t__ depth; scalar_t__ fail; scalar_t__ next; scalar_t__ parent; scalar_t__ links; scalar_t__ accepting; } ;
struct kwset {int maxd; char const* trans; scalar_t__ target; int mind; struct trie* trie; int obstack; scalar_t__ words; } ;
typedef int kwset_t ;


 int INT_MAX ;
 int kwsfree (int ) ;
 scalar_t__ malloc (int) ;
 scalar_t__ obstack_alloc (int *,int) ;
 int obstack_init (int *) ;

kwset_t
kwsalloc (char const *trans)
{
  struct kwset *kwset;

  kwset = (struct kwset *) malloc(sizeof (struct kwset));
  if (!kwset)
    return 0;

  obstack_init(&kwset->obstack);
  kwset->words = 0;
  kwset->trie
    = (struct trie *) obstack_alloc(&kwset->obstack, sizeof (struct trie));
  if (!kwset->trie)
    {
      kwsfree((kwset_t) kwset);
      return 0;
    }
  kwset->trie->accepting = 0;
  kwset->trie->links = 0;
  kwset->trie->parent = 0;
  kwset->trie->next = 0;
  kwset->trie->fail = 0;
  kwset->trie->depth = 0;
  kwset->trie->shift = 0;
  kwset->mind = INT_MAX;
  kwset->maxd = -1;
  kwset->target = 0;
  kwset->trans = trans;

  return (kwset_t) kwset;
}
