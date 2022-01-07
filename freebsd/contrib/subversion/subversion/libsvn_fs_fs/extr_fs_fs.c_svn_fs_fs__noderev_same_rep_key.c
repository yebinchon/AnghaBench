
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_boolean_t ;
struct TYPE_4__ {scalar_t__ item_index; scalar_t__ revision; int uniquifier; } ;
typedef TYPE_1__ representation_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ memcmp (int *,int *,int) ;

svn_boolean_t
svn_fs_fs__noderev_same_rep_key(representation_t *a,
                                representation_t *b)
{
  if (a == b)
    return TRUE;

  if (a == ((void*)0) || b == ((void*)0))
    return FALSE;

  if (a->item_index != b->item_index)
    return FALSE;

  if (a->revision != b->revision)
    return FALSE;

  return memcmp(&a->uniquifier, &b->uniquifier, sizeof(a->uniquifier)) == 0;
}
