
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* path; void* old_revision; void* revision; int lock_state; int prop_state; int content_state; int kind; int action; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int svn_wc_notify_action_t ;
typedef int apr_pool_t ;


 void* SVN_INVALID_REVNUM ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int svn_node_unknown ;
 int svn_wc_notify_lock_state_unknown ;
 int svn_wc_notify_state_unknown ;

svn_wc_notify_t *
svn_wc_create_notify(const char *path,
                     svn_wc_notify_action_t action,
                     apr_pool_t *pool)
{
  svn_wc_notify_t *ret = apr_pcalloc(pool, sizeof(*ret));
  ret->path = path;
  ret->action = action;
  ret->kind = svn_node_unknown;
  ret->content_state = ret->prop_state = svn_wc_notify_state_unknown;
  ret->lock_state = svn_wc_notify_lock_state_unknown;
  ret->revision = SVN_INVALID_REVNUM;
  ret->old_revision = SVN_INVALID_REVNUM;

  return ret;
}
