
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct collection_list {int next_aexpr_elt; int aexpr_listsize; struct agent_expr** aexpr_list; } ;
struct agent_expr {int dummy; } ;


 struct agent_expr** xrealloc (struct agent_expr**,int) ;

__attribute__((used)) static void
add_aexpr (struct collection_list *collect, struct agent_expr *aexpr)
{
  if (collect->next_aexpr_elt >= collect->aexpr_listsize)
    {
      collect->aexpr_list =
 xrealloc (collect->aexpr_list,
  2 * collect->aexpr_listsize * sizeof (struct agent_expr *));
      collect->aexpr_listsize *= 2;
    }
  collect->aexpr_list[collect->next_aexpr_elt] = aexpr;
  collect->next_aexpr_elt++;
}
