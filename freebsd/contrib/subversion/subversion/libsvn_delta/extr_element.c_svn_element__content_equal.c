
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ parent_eid; int payload; int name; } ;
typedef TYPE_1__ svn_element__content_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ strcmp (int ,int ) ;
 int svn_element__payload_equal (int ,int ,int *) ;

svn_boolean_t
svn_element__content_equal(const svn_element__content_t *content_left,
                           const svn_element__content_t *content_right,
                           apr_pool_t *scratch_pool)
{
  if (!content_left && !content_right)
    {
      return TRUE;
    }
  else if (!content_left || !content_right)
    {
      return FALSE;
    }

  if (content_left->parent_eid != content_right->parent_eid)
    {
      return FALSE;
    }
  if (strcmp(content_left->name, content_right->name) != 0)
    {
      return FALSE;
    }
  if (! svn_element__payload_equal(content_left->payload, content_right->payload,
                                   scratch_pool))
    {
      return FALSE;
    }

  return TRUE;
}
