
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct revision_baton_t {int rev_orig; int rev_actual; TYPE_1__* pb; int original_headers; int props; void* writing_begun; void* had_dropped_nodes; void* has_nodes; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_2__ {int rev_drop_count; scalar_t__ do_renumber_revs; } ;


 void* FALSE ;
 int * SVN_NO_ERROR ;
 int SVN_REPOS_DUMPFILE_REVISION_NUMBER ;
 int SVN_STR_TO_REV (char const*) ;
 int apr_hash_make (int *) ;
 void* apr_palloc (int *,int) ;
 int headers_dup (int *,int *) ;
 char* svn_hash_gets (int *,int ) ;

__attribute__((used)) static svn_error_t *
new_revision_record(void **revision_baton,
                    apr_hash_t *headers,
                    void *parse_baton,
                    apr_pool_t *pool)
{
  struct revision_baton_t *rb;
  const char *rev_orig;

  *revision_baton = apr_palloc(pool, sizeof(struct revision_baton_t));
  rb = *revision_baton;
  rb->pb = parse_baton;
  rb->has_nodes = FALSE;
  rb->had_dropped_nodes = FALSE;
  rb->writing_begun = FALSE;
  rb->props = apr_hash_make(pool);
  rb->original_headers = headers_dup(headers, pool);

  rev_orig = svn_hash_gets(headers, SVN_REPOS_DUMPFILE_REVISION_NUMBER);
  rb->rev_orig = SVN_STR_TO_REV(rev_orig);

  if (rb->pb->do_renumber_revs)
    rb->rev_actual = rb->rev_orig - rb->pb->rev_drop_count;
  else
    rb->rev_actual = rb->rev_orig;

  return SVN_NO_ERROR;
}
