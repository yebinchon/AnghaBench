
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_hash_t ;


 int SVN_PROP_REVISION_AUTHOR ;
 int SVN_PROP_REVISION_DATE ;
 int SVN_PROP_REVISION_LOG ;
 int svn_hash_sets (int *,int ,int *) ;

void
svn_compat_log_revprops_clear(apr_hash_t *revprops)
{
  if (revprops)
    {
      svn_hash_sets(revprops, SVN_PROP_REVISION_AUTHOR, ((void*)0));
      svn_hash_sets(revprops, SVN_PROP_REVISION_DATE, ((void*)0));
      svn_hash_sets(revprops, SVN_PROP_REVISION_LOG, ((void*)0));
    }
}
