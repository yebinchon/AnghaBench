
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct trie {int shift; int maxshift; scalar_t__ depth; TYPE_2__* links; TYPE_1__* parent; struct trie* next; scalar_t__ accepting; struct trie* fail; } ;
struct kwset {int mind; int words; char* trans; scalar_t__* target; int mind2; unsigned char* delta; struct trie** next; struct trie* trie; int obstack; } ;
typedef scalar_t__ kwset_t ;
struct TYPE_9__ {scalar_t__ label; struct trie* trie; } ;
struct TYPE_8__ {scalar_t__ maxshift; } ;


 int NCHAR ;
 int enqueue (TYPE_2__*,struct trie**) ;
 int hasevery (TYPE_2__*,TYPE_2__*) ;
 scalar_t__* obstack_alloc (int *,unsigned char) ;
 int treedelta (TYPE_2__*,scalar_t__,unsigned char*) ;
 int treefails (TYPE_2__*,struct trie*,struct trie*) ;
 int treenext (TYPE_2__*,struct trie**) ;

char *
kwsprep (kwset_t kws)
{
  register struct kwset *kwset;
  register int i;
  register struct trie *curr, *fail;
  register char const *trans;
  unsigned char delta[NCHAR];
  struct trie *last, *next[NCHAR];

  kwset = (struct kwset *) kws;




  if (kwset->mind < 256)
    for (i = 0; i < NCHAR; ++i)
      delta[i] = kwset->mind;
  else
    for (i = 0; i < NCHAR; ++i)
      delta[i] = 255;



  if (kwset->words == 1 && kwset->trans == 0)
    {

      kwset->target = obstack_alloc(&kwset->obstack, kwset->mind);
      for (i = kwset->mind - 1, curr = kwset->trie; i >= 0; --i)
 {
   kwset->target[i] = curr->links->label;
   curr = curr->links->trie;
 }

      for (i = 0; i < kwset->mind; ++i)
 delta[(unsigned char) kwset->target[i]] = kwset->mind - (i + 1);
      kwset->mind2 = kwset->mind;


      for (i = 0; i < kwset->mind - 1; ++i)
 if (kwset->target[i] == kwset->target[kwset->mind - 1])
   kwset->mind2 = kwset->mind - (i + 1);
    }
  else
    {


      for (curr = last = kwset->trie; curr; curr = curr->next)
 {

   enqueue(curr->links, &last);

   curr->shift = kwset->mind;
   curr->maxshift = kwset->mind;


   treedelta(curr->links, curr->depth, delta);


   treefails(curr->links, curr->fail, kwset->trie);



   for (fail = curr->fail; fail; fail = fail->fail)
     {



       if (!hasevery(fail->links, curr->links))
  if (curr->depth - fail->depth < fail->shift)
    fail->shift = curr->depth - fail->depth;




       if (curr->accepting && fail->maxshift > curr->depth - fail->depth)
  fail->maxshift = curr->depth - fail->depth;
     }
 }



      for (curr = kwset->trie->next; curr; curr = curr->next)
 {
   if (curr->maxshift > curr->parent->maxshift)
     curr->maxshift = curr->parent->maxshift;
   if (curr->shift > curr->maxshift)
     curr->shift = curr->maxshift;
 }



      for (i = 0; i < NCHAR; ++i)
 next[i] = 0;
      treenext(kwset->trie->links, next);

      if ((trans = kwset->trans) != 0)
 for (i = 0; i < NCHAR; ++i)
   kwset->next[i] = next[(unsigned char) trans[i]];
      else
 for (i = 0; i < NCHAR; ++i)
   kwset->next[i] = next[i];
    }


  if ((trans = kwset->trans) != 0)
    for (i = 0; i < NCHAR; ++i)
      kwset->delta[i] = delta[(unsigned char) trans[i]];
  else
    for (i = 0; i < NCHAR; ++i)
      kwset->delta[i] = delta[i];

  return 0;
}
