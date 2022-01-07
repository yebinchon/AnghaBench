
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct blame_chain {int blame; } ;
struct blame {scalar_t__ start; struct blame* next; } ;
typedef scalar_t__ apr_off_t ;


 int * SVN_NO_ERROR ;
 int blame_adjust (struct blame*,scalar_t__) ;
 int blame_destroy (struct blame_chain*,struct blame*) ;
 struct blame* blame_find (int ,scalar_t__) ;

__attribute__((used)) static svn_error_t *
blame_delete_range(struct blame_chain *chain,
                   apr_off_t start,
                   apr_off_t length)
{
  struct blame *first = blame_find(chain->blame, start);
  struct blame *last = blame_find(chain->blame, start + length);
  struct blame *tail = last->next;

  if (first != last)
    {
      struct blame *walk = first->next;
      while (walk != last)
        {
          struct blame *next = walk->next;
          blame_destroy(chain, walk);
          walk = next;
        }
      first->next = last;
      last->start = start;
      if (first->start == start)
        {
          *first = *last;
          blame_destroy(chain, last);
          last = first;
        }
    }

  if (tail && tail->start == last->start + length)
    {
      *last = *tail;
      blame_destroy(chain, tail);
      tail = last->next;
    }

  blame_adjust(tail, -length);

  return SVN_NO_ERROR;
}
