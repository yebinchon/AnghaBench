
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_chain {struct blame* blame; } ;
struct blame {scalar_t__ start; struct blame* next; int rev; } ;
typedef int apr_pool_t ;


 int assert (int) ;
 struct blame* blame_create (struct blame_chain*,int ,scalar_t__) ;

__attribute__((used)) static void
normalize_blames(struct blame_chain *chain,
                 struct blame_chain *chain_merged,
                 apr_pool_t *pool)
{
  struct blame *walk, *walk_merged;



  for (walk = chain->blame, walk_merged = chain_merged->blame;
       walk->next && walk_merged->next;
       walk = walk->next, walk_merged = walk_merged->next)
    {

      assert(walk->start == walk_merged->start);

      if (walk->next->start < walk_merged->next->start)
        {

          struct blame *tmp = blame_create(chain_merged, walk_merged->rev,
                                           walk->next->start);
          tmp->next = walk_merged->next;
          walk_merged->next = tmp;
        }

      if (walk->next->start > walk_merged->next->start)
        {

          struct blame *tmp = blame_create(chain, walk->rev,
                                           walk_merged->next->start);
          tmp->next = walk->next;
          walk->next = tmp;
        }
    }




  while (walk->next != ((void*)0))
    {
      struct blame *tmp = blame_create(chain_merged, walk_merged->rev,
                                       walk->next->start);
      walk_merged->next = tmp;

      walk_merged = walk_merged->next;
      walk = walk->next;
    }


  while (walk_merged->next != ((void*)0))
    {
      struct blame *tmp = blame_create(chain, walk->rev,
                                       walk_merged->next->start);
      walk->next = tmp;

      walk = walk->next;
      walk_merged = walk_merged->next;
    }
}
