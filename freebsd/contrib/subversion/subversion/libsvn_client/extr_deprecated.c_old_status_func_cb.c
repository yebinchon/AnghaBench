
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_status_t ;
typedef int svn_wc_status2_t ;
struct old_status_func_cb_baton {int original_baton; int (* original_func ) (int ,char const*,int *) ;} ;


 int stub1 (int ,char const*,int *) ;

__attribute__((used)) static void old_status_func_cb(void *baton,
                               const char *path,
                               svn_wc_status2_t *status)
{
  struct old_status_func_cb_baton *b = baton;
  svn_wc_status_t *stat = (svn_wc_status_t *) status;

  b->original_func(b->original_baton, path, stat);
}
