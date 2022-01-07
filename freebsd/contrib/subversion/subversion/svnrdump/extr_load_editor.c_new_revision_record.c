
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_revnum_t ;
typedef int svn_error_t ;
struct revision_baton {scalar_t__ rev; int pool; int revprop_table; struct parse_baton* pb; scalar_t__ rev_offset; int * db; } ;
struct parse_baton {scalar_t__ oldest_dumpstream_rev; int * commit_edit_baton; int * commit_editor; int session; } ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int32_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int SVN_REPOS_DUMPFILE_REVISION_NUMBER ;
 scalar_t__ SVN_STR_TO_REV (char const*) ;
 int apr_hash_make (int ) ;
 struct revision_baton* apr_pcalloc (int *,int) ;
 char* svn_hash_gets (int *,int ) ;
 int svn_pool_create (int *) ;
 int svn_ra_get_latest_revnum (int ,scalar_t__*,int *) ;

__attribute__((used)) static svn_error_t *
new_revision_record(void **revision_baton,
                    apr_hash_t *headers,
                    void *parse_baton,
                    apr_pool_t *pool)
{
  struct revision_baton *rb;
  struct parse_baton *pb;
  const char *rev_str;
  svn_revnum_t head_rev;

  rb = apr_pcalloc(pool, sizeof(*rb));
  pb = parse_baton;
  rb->pool = svn_pool_create(pool);
  rb->pb = pb;
  rb->db = ((void*)0);

  rev_str = svn_hash_gets(headers, SVN_REPOS_DUMPFILE_REVISION_NUMBER);
  if (rev_str)
    rb->rev = SVN_STR_TO_REV(rev_str);

  SVN_ERR(svn_ra_get_latest_revnum(pb->session, &head_rev, pool));





  rb->rev_offset = (apr_int32_t) ((rb->rev) - (head_rev + 1));


  if ((rb->rev > 0) && (!SVN_IS_VALID_REVNUM(pb->oldest_dumpstream_rev)))
    pb->oldest_dumpstream_rev = rb->rev;



  rb->pb->commit_editor = ((void*)0);
  rb->pb->commit_edit_baton = ((void*)0);
  rb->revprop_table = apr_hash_make(rb->pool);

  *revision_baton = rb;
  return SVN_NO_ERROR;
}
