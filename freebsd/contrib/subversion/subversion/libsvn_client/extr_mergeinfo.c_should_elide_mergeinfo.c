
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * svn_mergeinfo_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 scalar_t__ apr_hash_count (int *) ;
 int svn_mergeinfo__add_suffix_to_mergeinfo (int **,int *,char const*,int *,int *) ;
 int svn_mergeinfo__equals (int*,int *,int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
should_elide_mergeinfo(svn_boolean_t *elides,
                       svn_mergeinfo_t parent_mergeinfo,
                       svn_mergeinfo_t child_mergeinfo,
                       const char *path_suffix,
                       apr_pool_t *scratch_pool)
{

  if (child_mergeinfo == ((void*)0))
    {
      *elides = FALSE;
    }
  else if (apr_hash_count(child_mergeinfo) == 0)
    {



      *elides = (!parent_mergeinfo || apr_hash_count(parent_mergeinfo) == 0);
    }
  else if (!parent_mergeinfo || apr_hash_count(parent_mergeinfo) == 0)
    {


      *elides = FALSE;
    }
  else
    {


      svn_mergeinfo_t path_tweaked_parent_mergeinfo;


      if (path_suffix)
        SVN_ERR(svn_mergeinfo__add_suffix_to_mergeinfo(
                  &path_tweaked_parent_mergeinfo, parent_mergeinfo,
                  path_suffix, scratch_pool, scratch_pool));
      else
        path_tweaked_parent_mergeinfo = parent_mergeinfo;

      SVN_ERR(svn_mergeinfo__equals(elides,
                                    path_tweaked_parent_mergeinfo,
                                    child_mergeinfo, TRUE, scratch_pool));
    }

  return SVN_NO_ERROR;
}
