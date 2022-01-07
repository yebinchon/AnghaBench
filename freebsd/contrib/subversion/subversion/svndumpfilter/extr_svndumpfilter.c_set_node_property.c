
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_error_t ;
struct revision_baton_t {int props; int rev_orig; } ;
struct node_baton_t {int props; scalar_t__ has_props; int node_path; scalar_t__ has_prop_delta; scalar_t__ do_skip; struct revision_baton_t* rb; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_STREAM_MALFORMED_DATA ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_MERGEINFO ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 int adjust_mergeinfo (int **,int const*,struct revision_baton_t*,int *) ;
 int * apr_hash_pool_get (int ) ;
 scalar_t__ strcmp (char const*,int ) ;
 int * svn_error_createf (int ,int *,int ,int ,int ) ;
 int write_prop_to_stringbuf (int ,char const*,int const*) ;

__attribute__((used)) static svn_error_t *
set_node_property(void *node_baton,
                  const char *name,
                  const svn_string_t *value)
{
  struct node_baton_t *nb = node_baton;
  struct revision_baton_t *rb = nb->rb;

  if (nb->do_skip)
    return SVN_NO_ERROR;




  if (! (nb->has_props || nb->has_prop_delta))
    return svn_error_createf(SVN_ERR_STREAM_MALFORMED_DATA, ((void*)0),
                             _("Delta property block detected, but deltas "
                               "are not enabled for node '%s' in original "
                               "revision %ld"),
                             nb->node_path, rb->rev_orig);

  if (strcmp(name, SVN_PROP_MERGEINFO) == 0)
    {
      svn_string_t *filtered_mergeinfo;
      apr_pool_t *pool = apr_hash_pool_get(rb->props);
      SVN_ERR(adjust_mergeinfo(&filtered_mergeinfo, value, rb, pool));
      value = filtered_mergeinfo;
    }

  nb->has_props = TRUE;
  write_prop_to_stringbuf(nb->props, name, value);

  return SVN_NO_ERROR;
}
