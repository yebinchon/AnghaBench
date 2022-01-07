
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trie {int accepting; scalar_t__ depth; scalar_t__ shift; scalar_t__ fail; scalar_t__ next; struct trie* parent; struct tree* links; } ;
struct tree {unsigned char label; int balance; struct trie* trie; struct tree* rlink; struct tree* llink; } ;
struct kwset {char const* trans; int words; scalar_t__ mind; scalar_t__ maxd; int obstack; struct trie* trie; } ;
typedef scalar_t__ kwset_t ;


 char* _ (char*) ;
 int abort () ;
 scalar_t__ obstack_alloc (int *,int) ;

char *
kwsincr (kwset_t kws, char const *text, size_t len)
{
  struct kwset *kwset;
  register struct trie *trie;
  register unsigned char label;
  register struct tree *link;
  register int depth;
  struct tree *links[12];
  enum { L, R } dirs[12];
  struct tree *t, *r, *l, *rl, *lr;

  kwset = (struct kwset *) kws;
  trie = kwset->trie;
  text += len;



  while (len--)
    {
      label = kwset->trans ? kwset->trans[(unsigned char) *--text] : *--text;




      link = trie->links;
      links[0] = (struct tree *) &trie->links;
      dirs[0] = L;
      depth = 1;

      while (link && label != link->label)
 {
   links[depth] = link;
   if (label < link->label)
     dirs[depth++] = L, link = link->llink;
   else
     dirs[depth++] = R, link = link->rlink;
 }




      if (!link)
 {
   link = (struct tree *) obstack_alloc(&kwset->obstack,
            sizeof (struct tree));
   if (!link)
     return _("memory exhausted");
   link->llink = 0;
   link->rlink = 0;
   link->trie = (struct trie *) obstack_alloc(&kwset->obstack,
           sizeof (struct trie));
   if (!link->trie)
     return _("memory exhausted");
   link->trie->accepting = 0;
   link->trie->links = 0;
   link->trie->parent = trie;
   link->trie->next = 0;
   link->trie->fail = 0;
   link->trie->depth = trie->depth + 1;
   link->trie->shift = 0;
   link->label = label;
   link->balance = 0;


   if (dirs[--depth] == L)
     links[depth]->llink = link;
   else
     links[depth]->rlink = link;


   while (depth && !links[depth]->balance)
     {
       if (dirs[depth] == L)
  --links[depth]->balance;
       else
  ++links[depth]->balance;
       --depth;
     }


   if (depth && ((dirs[depth] == L && --links[depth]->balance)
   || (dirs[depth] == R && ++links[depth]->balance)))
     {
       switch (links[depth]->balance)
  {
  case (char) -2:
    switch (dirs[depth + 1])
      {
      case L:
        r = links[depth], t = r->llink, rl = t->rlink;
        t->rlink = r, r->llink = rl;
        t->balance = r->balance = 0;
        break;
      case R:
        r = links[depth], l = r->llink, t = l->rlink;
        rl = t->rlink, lr = t->llink;
        t->llink = l, l->rlink = lr, t->rlink = r, r->llink = rl;
        l->balance = t->balance != 1 ? 0 : -1;
        r->balance = t->balance != (char) -1 ? 0 : 1;
        t->balance = 0;
        break;
      default:
        abort ();
      }
    break;
  case 2:
    switch (dirs[depth + 1])
      {
      case R:
        l = links[depth], t = l->rlink, lr = t->llink;
        t->llink = l, l->rlink = lr;
        t->balance = l->balance = 0;
        break;
      case L:
        l = links[depth], r = l->rlink, t = r->llink;
        lr = t->llink, rl = t->rlink;
        t->llink = l, l->rlink = lr, t->rlink = r, r->llink = rl;
        l->balance = t->balance != 1 ? 0 : -1;
        r->balance = t->balance != (char) -1 ? 0 : 1;
        t->balance = 0;
        break;
      default:
        abort ();
      }
    break;
  default:
    abort ();
  }

       if (dirs[depth - 1] == L)
  links[depth - 1]->llink = t;
       else
  links[depth - 1]->rlink = t;
     }
 }

      trie = link->trie;
    }



  if (!trie->accepting)
    trie->accepting = 1 + 2 * kwset->words;
  ++kwset->words;


  if (trie->depth < kwset->mind)
    kwset->mind = trie->depth;
  if (trie->depth > kwset->maxd)
    kwset->maxd = trie->depth;

  return 0;
}
