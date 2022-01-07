
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_prop_t ;
struct revision_baton {scalar_t__ rev; int skipped; int * pool; int revprops; struct parse_baton* pb; } ;
struct parse_baton {scalar_t__ start_rev; scalar_t__ end_rev; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 scalar_t__ SVN_INVALID_REVNUM ;
 scalar_t__ SVN_IS_VALID_REVNUM (scalar_t__) ;
 int SVN_REPOS_DUMPFILE_REVISION_NUMBER ;
 scalar_t__ SVN_STR_TO_REV (char const*) ;
 int apr_array_make (int *,int,int) ;
 struct revision_baton* apr_pcalloc (int *,int) ;
 char* svn_hash_gets (int *,int ) ;

__attribute__((used)) static struct revision_baton *
make_revision_baton(apr_hash_t *headers,
                    struct parse_baton *pb,
                    apr_pool_t *pool)
{
  struct revision_baton *rb = apr_pcalloc(pool, sizeof(*rb));
  const char *val;

  rb->pb = pb;
  rb->pool = pool;
  rb->rev = SVN_INVALID_REVNUM;
  rb->revprops = apr_array_make(rb->pool, 8, sizeof(svn_prop_t));

  if ((val = svn_hash_gets(headers, SVN_REPOS_DUMPFILE_REVISION_NUMBER)))
    {
      rb->rev = SVN_STR_TO_REV(val);


      rb->skipped = (SVN_IS_VALID_REVNUM(pb->start_rev)
                     && ((rb->rev < pb->start_rev) ||
                         (rb->rev > pb->end_rev)));
    }

  return rb;
}
