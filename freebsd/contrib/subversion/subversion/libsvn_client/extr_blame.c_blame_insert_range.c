
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct rev {int dummy; } ;
struct blame_chain {struct blame* blame; } ;
struct blame {scalar_t__ start; struct blame* next; struct rev const* rev; } ;
typedef scalar_t__ apr_off_t ;


 int * SVN_NO_ERROR ;
 int blame_adjust (struct blame*,scalar_t__) ;
 struct blame* blame_create (struct blame_chain*,struct rev const*,scalar_t__) ;
 struct blame* blame_find (struct blame*,scalar_t__) ;

__attribute__((used)) static svn_error_t *
blame_insert_range(struct blame_chain *chain,
                   const struct rev *rev,
                   apr_off_t start,
                   apr_off_t length)
{
  struct blame *head = chain->blame;
  struct blame *point = blame_find(head, start);
  struct blame *insert;

  if (point->start == start)
    {
      insert = blame_create(chain, point->rev, point->start + length);
      point->rev = rev;
      insert->next = point->next;
      point->next = insert;
    }
  else
    {
      struct blame *middle;
      middle = blame_create(chain, rev, start);
      insert = blame_create(chain, point->rev, start + length);
      middle->next = insert;
      insert->next = point->next;
      point->next = middle;
    }
  blame_adjust(insert->next, length);

  return SVN_NO_ERROR;
}
