
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
struct dir_baton {int ood_changed_date; int pool; int ood_changed_author; int ood_changed_rev; int prop_changed; } ;
typedef int apr_time_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_ENTRY_COMMITTED_DATE ;
 int SVN_PROP_ENTRY_COMMITTED_REV ;
 int SVN_PROP_ENTRY_LAST_AUTHOR ;
 int SVN_STR_TO_REV (int ) ;
 int TRUE ;
 int apr_pstrdup (int ,int ) ;
 scalar_t__ strcmp (char const*,int ) ;
 int svn_time_from_cstring (int *,int ,int ) ;
 scalar_t__ svn_wc_is_normal_prop (char const*) ;

__attribute__((used)) static svn_error_t *
change_dir_prop(void *dir_baton,
                const char *name,
                const svn_string_t *value,
                apr_pool_t *pool)
{
  struct dir_baton *db = dir_baton;
  if (svn_wc_is_normal_prop(name))
    db->prop_changed = TRUE;


  if (value != ((void*)0))
    {
      if (strcmp(name, SVN_PROP_ENTRY_COMMITTED_REV) == 0)
        db->ood_changed_rev = SVN_STR_TO_REV(value->data);
      else if (strcmp(name, SVN_PROP_ENTRY_LAST_AUTHOR) == 0)
        db->ood_changed_author = apr_pstrdup(db->pool, value->data);
      else if (strcmp(name, SVN_PROP_ENTRY_COMMITTED_DATE) == 0)
        {
          apr_time_t tm;
          SVN_ERR(svn_time_from_cstring(&tm, value->data, db->pool));
          db->ood_changed_date = tm;
        }
    }

  return SVN_NO_ERROR;
}
