
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct blame_receiver_wrapper_baton2 {int baton; int * (* receiver ) (int ,int ,int ,char const*,char const*,int ,char const*,char const*,char const*,char const*,int *) ;} ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
typedef int apr_hash_t ;


 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_AUTHOR ;
 int SVN_PROP_REVISION_DATE ;
 int * stub1 (int ,int ,int ,char const*,char const*,int ,char const*,char const*,char const*,char const*,int *) ;
 char* svn_prop_get_value (int *,int ) ;

__attribute__((used)) static svn_error_t *
blame_wrapper_receiver2(void *baton,
   svn_revnum_t start_revnum,
   svn_revnum_t end_revnum,
   apr_int64_t line_no,
   svn_revnum_t revision,
   apr_hash_t *rev_props,
   svn_revnum_t merged_revision,
   apr_hash_t *merged_rev_props,
   const char *merged_path,
   const char *line,
   svn_boolean_t local_change,
   apr_pool_t *pool)
{
  struct blame_receiver_wrapper_baton2 *brwb = baton;
  const char *author = ((void*)0);
  const char *date = ((void*)0);
  const char *merged_author = ((void*)0);
  const char *merged_date = ((void*)0);

  if (rev_props != ((void*)0))
    {
      author = svn_prop_get_value(rev_props, SVN_PROP_REVISION_AUTHOR);
      date = svn_prop_get_value(rev_props, SVN_PROP_REVISION_DATE);
    }
  if (merged_rev_props != ((void*)0))
    {
      merged_author = svn_prop_get_value(merged_rev_props,
                                         SVN_PROP_REVISION_AUTHOR);
      merged_date = svn_prop_get_value(merged_rev_props,
                                       SVN_PROP_REVISION_DATE);
    }

  if (brwb->receiver)
    return brwb->receiver(brwb->baton, line_no, revision, author, date,
                          merged_revision, merged_author, merged_date,
                          merged_path, line, pool);

  return SVN_NO_ERROR;
}
