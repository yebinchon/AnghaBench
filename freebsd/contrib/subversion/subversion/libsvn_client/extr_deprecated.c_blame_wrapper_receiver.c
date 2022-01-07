
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct blame_receiver_wrapper_baton {int baton; int * (* receiver ) (int ,int ,int ,char const*,char const*,char const*,int *) ;} ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int * SVN_NO_ERROR ;
 int * stub1 (int ,int ,int ,char const*,char const*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
blame_wrapper_receiver(void *baton,
                       apr_int64_t line_no,
                       svn_revnum_t revision,
                       const char *author,
                       const char *date,
                       svn_revnum_t merged_revision,
                       const char *merged_author,
                       const char *merged_date,
                       const char *merged_path,
                       const char *line,
                       apr_pool_t *pool)
{
  struct blame_receiver_wrapper_baton *brwb = baton;

  if (brwb->receiver)
    return brwb->receiver(brwb->baton,
                          line_no, revision, author, date, line, pool);

  return SVN_NO_ERROR;
}
