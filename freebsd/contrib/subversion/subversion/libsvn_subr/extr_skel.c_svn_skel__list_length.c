
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; struct TYPE_3__* children; scalar_t__ is_atom; } ;
typedef TYPE_1__ svn_skel_t ;



int
svn_skel__list_length(const svn_skel_t *skel)
{
  int len = 0;
  const svn_skel_t *child;

  if ((! skel) || skel->is_atom)
    return -1;

  for (child = skel->children; child; child = child->next)
    len++;

  return len;
}
