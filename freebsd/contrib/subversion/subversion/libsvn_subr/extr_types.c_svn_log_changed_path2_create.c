
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* props_modified; void* text_modified; } ;
typedef TYPE_1__ svn_log_changed_path2_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pcalloc (int *,int) ;
 void* svn_tristate_unknown ;

svn_log_changed_path2_t *
svn_log_changed_path2_create(apr_pool_t *pool)
{
  svn_log_changed_path2_t *new_changed_path
    = apr_pcalloc(pool, sizeof(*new_changed_path));

  new_changed_path->text_modified = svn_tristate_unknown;
  new_changed_path->props_modified = svn_tristate_unknown;

  return new_changed_path;
}
