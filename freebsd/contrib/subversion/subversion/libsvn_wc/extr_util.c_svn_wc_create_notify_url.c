
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* url; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int svn_wc_notify_action_t ;
typedef int apr_pool_t ;


 TYPE_1__* svn_wc_create_notify (char*,int ,int *) ;

svn_wc_notify_t *
svn_wc_create_notify_url(const char *url,
                         svn_wc_notify_action_t action,
                         apr_pool_t *pool)
{
  svn_wc_notify_t *ret = svn_wc_create_notify(".", action, pool);
  ret->url = url;

  return ret;
}
