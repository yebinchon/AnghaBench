
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int SVNSYNC_PROP_PREFIX ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_cmdline_printf (int *,int ,int ,...) ;

__attribute__((used)) static svn_error_t *
log_properties_copied(svn_boolean_t syncprops_found,
                      svn_revnum_t rev,
                      apr_pool_t *pool)
{
  if (syncprops_found)
    SVN_ERR(svn_cmdline_printf(pool,
                               _("Copied properties for revision %ld "
                                 "(%s* properties skipped).\n"),
                               rev, SVNSYNC_PROP_PREFIX));
  else
    SVN_ERR(svn_cmdline_printf(pool,
                               _("Copied properties for revision %ld.\n"),
                               rev));

  return SVN_NO_ERROR;
}
