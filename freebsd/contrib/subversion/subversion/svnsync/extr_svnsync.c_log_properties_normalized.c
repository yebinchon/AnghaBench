
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_PREFIX ;
 int _ (char*) ;
 int svn_cmdline_printf (int *,int ,int ,int,int) ;

__attribute__((used)) static svn_error_t *
log_properties_normalized(int normalized_rev_props_count,
                          int normalized_node_props_count,
                          apr_pool_t *pool)
{
  if (normalized_rev_props_count > 0 || normalized_node_props_count > 0)
    SVN_ERR(svn_cmdline_printf(pool,
                               _("NOTE: Normalized %s* properties "
                                 "to LF line endings (%d rev-props, "
                                 "%d node-props).\n"),
                               SVN_PROP_PREFIX,
                               normalized_rev_props_count,
                               normalized_node_props_count));
  return SVN_NO_ERROR;
}
