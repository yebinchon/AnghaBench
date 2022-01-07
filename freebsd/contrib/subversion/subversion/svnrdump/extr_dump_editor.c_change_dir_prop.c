
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct dir_baton {int dump_props; int pool; int deleted_props; int props; TYPE_1__* eb; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {struct dir_baton* pending_db; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int apr_pstrdup (int ,char const*) ;
 int dump_pending_dir (TYPE_1__*,int *) ;
 int svn_hash_sets (int ,int ,char*) ;
 scalar_t__ svn_prop_regular_kind ;
 scalar_t__ svn_property_kind2 (char const*) ;
 char* svn_string_dup (int const*,int ) ;

__attribute__((used)) static svn_error_t *
change_dir_prop(void *parent_baton,
                const char *name,
                const svn_string_t *value,
                apr_pool_t *pool)
{
  struct dir_baton *db = parent_baton;
  svn_boolean_t this_pending;



  this_pending = (db->eb->pending_db == db);
  if (! this_pending)
    SVN_ERR(dump_pending_dir(db->eb, pool));

  if (svn_property_kind2(name) != svn_prop_regular_kind)
    return SVN_NO_ERROR;

  if (value)
    svn_hash_sets(db->props,
                  apr_pstrdup(db->pool, name),
                  svn_string_dup(value, db->pool));
  else
    svn_hash_sets(db->deleted_props, apr_pstrdup(db->pool, name), "");


  db->dump_props = TRUE;

  return SVN_NO_ERROR;
}
