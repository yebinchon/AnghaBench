
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int apr_hash_t ;


 int SVN_PROP_REVISION_AUTHOR ;
 int SVN_PROP_REVISION_DATE ;
 int SVN_PROP_REVISION_LOG ;
 int * svn_hash_gets (int *,int ) ;

void
svn_compat_log_revprops_out_string(const svn_string_t **author,
                                   const svn_string_t **date,
                                   const svn_string_t **message,
                                   apr_hash_t *revprops)
{
  *author = *date = *message = ((void*)0);
  if (revprops)
    {
      *author = svn_hash_gets(revprops, SVN_PROP_REVISION_AUTHOR);
      *date = svn_hash_gets(revprops, SVN_PROP_REVISION_DATE);
      *message = svn_hash_gets(revprops, SVN_PROP_REVISION_LOG);
    }
}
