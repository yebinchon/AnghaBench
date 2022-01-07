
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int revision; int prop_state; int content_state; int mime_type; int kind; int action; int path; } ;
typedef TYPE_1__ svn_wc_notify_t ;
struct compat_notify_baton_t {int baton; int (* func ) (int ,int ,int ,int ,int ,int ,int ,int ) ;} ;
typedef int apr_pool_t ;


 int stub1 (int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
compat_call_notify_func(void *baton,
                        const svn_wc_notify_t *n,
                        apr_pool_t *pool)
{
  struct compat_notify_baton_t *nb = baton;

  if (nb->func)
    (*nb->func)(nb->baton, n->path, n->action, n->kind, n->mime_type,
                n->content_state, n->prop_state, n->revision);
}
