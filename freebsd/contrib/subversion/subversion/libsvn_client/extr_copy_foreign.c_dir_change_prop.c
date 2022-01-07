
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef scalar_t__ svn_prop_kind_t ;
typedef int svn_error_t ;
struct edit_baton_t {int wc_ctx; } ;
struct dir_baton_t {int local_abspath; int pool; scalar_t__ properties; int created; struct edit_baton_t* eb; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_MERGEINFO ;
 scalar_t__ apr_hash_make (int ) ;
 int apr_pstrdup (int ,char const*) ;
 int strcmp (char const*,int ) ;
 int svn_depth_empty ;
 int svn_hash_sets (scalar_t__,int ,int ) ;
 scalar_t__ svn_prop_regular_kind ;
 scalar_t__ svn_property_kind2 (char const*) ;
 int svn_string_dup (int const*,int ) ;
 int svn_wc_prop_set4 (int ,int ,char const*,int const*,int ,int ,int *,int *,int *,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
dir_change_prop(void *dir_baton,
                const char *name,
                const svn_string_t *value,
                apr_pool_t *scratch_pool)
{
  struct dir_baton_t *db = dir_baton;
  struct edit_baton_t *eb = db->eb;
  svn_prop_kind_t prop_kind;

  prop_kind = svn_property_kind2(name);

  if (prop_kind != svn_prop_regular_kind
      || ! strcmp(name, SVN_PROP_MERGEINFO))
    {

      return SVN_NO_ERROR;
    }

  if (! db->created)
    {


      if (! db->properties)
        db->properties = apr_hash_make(db->pool);

      if (value != ((void*)0))
        svn_hash_sets(db->properties, apr_pstrdup(db->pool, name),
                      svn_string_dup(value, db->pool));
    }
  else
    {

      SVN_ERR(svn_wc_prop_set4(eb->wc_ctx, db->local_abspath, name, value,
                               svn_depth_empty, FALSE, ((void*)0),
                               ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0),
                               scratch_pool));
    }

  return SVN_NO_ERROR;
}
