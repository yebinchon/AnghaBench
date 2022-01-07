
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct dump_edit_baton {int ra_session; scalar_t__ current_revision; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_make (int *) ;
 int svn_categorize_props (int *,int *,int *,int **,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 int * svn_prop_array_to_hash (int *,int *) ;
 int * svn_prop_hash_to_array (int *,int *) ;
 int svn_ra_check_path (int ,char const*,scalar_t__,scalar_t__*,int *) ;
 int svn_ra_get_dir2 (int ,int *,int *,int **,char const*,scalar_t__,int ,int *) ;
 int svn_ra_get_file (int ,char const*,scalar_t__,int *,int *,int **,int *) ;

__attribute__((used)) static svn_error_t *
fetch_props_func(apr_hash_t **props,
                 void *baton,
                 const char *path,
                 svn_revnum_t base_revision,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  struct dump_edit_baton *eb = baton;
  svn_node_kind_t node_kind;

  if (path[0] == '/')
    path += 1;

  if (! SVN_IS_VALID_REVNUM(base_revision))
    base_revision = eb->current_revision - 1;

  SVN_ERR(svn_ra_check_path(eb->ra_session, path, base_revision, &node_kind,
                            scratch_pool));

  if (node_kind == svn_node_file)
    {
      SVN_ERR(svn_ra_get_file(eb->ra_session, path, base_revision,
                              ((void*)0), ((void*)0), props, result_pool));
    }
  else if (node_kind == svn_node_dir)
    {
      apr_array_header_t *tmp_props;

      SVN_ERR(svn_ra_get_dir2(eb->ra_session, ((void*)0), ((void*)0), props, path,
                              base_revision, 0 ,
                              result_pool));
      tmp_props = svn_prop_hash_to_array(*props, result_pool);
      SVN_ERR(svn_categorize_props(tmp_props, ((void*)0), ((void*)0), &tmp_props,
                                   result_pool));
      *props = svn_prop_array_to_hash(tmp_props, result_pool);
    }
  else
    {
      *props = apr_hash_make(result_pool);
    }

  return SVN_NO_ERROR;
}
