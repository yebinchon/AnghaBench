
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; struct TYPE_3__* next; struct TYPE_3__* children; scalar_t__ is_atom; } ;
typedef TYPE_1__ svn_skel_t ;
typedef int apr_size_t ;



__attribute__((used)) static apr_size_t
estimate_unparsed_size(const svn_skel_t *skel)
{
  if (skel->is_atom)
    {
      if (skel->len < 100)



        return skel->len + 3;
      else
        return skel->len + 30;
    }
  else
    {
      apr_size_t total_len;
      svn_skel_t *child;



      total_len = 2;
      for (child = skel->children; child; child = child->next)
        total_len += estimate_unparsed_size(child) + 1;

      return total_len;
    }
}
