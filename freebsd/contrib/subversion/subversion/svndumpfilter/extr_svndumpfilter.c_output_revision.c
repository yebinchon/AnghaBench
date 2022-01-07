
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct revmap_t {void* was_dropped; int rev; } ;
struct revision_baton_t {scalar_t__ rev_orig; TYPE_1__* pb; int rev_actual; int * props; int original_headers; scalar_t__ had_dropped_nodes; scalar_t__ has_nodes; void* writing_begun; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_2__ {scalar_t__ oldest_original_rev; int quiet; int * renumber_history; int last_live_revision; scalar_t__ do_renumber_revs; int rev_drop_count; int out_stream; int drop_all_empty_revs; scalar_t__ drop_empty_revs; int preserve_revprops; } ;


 void* FALSE ;
 int SVN_ERR (int ) ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_DATE ;
 int SVN_PROP_REVISION_LOG ;
 void* TRUE ;
 int _ (char*) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_pool_get (int *) ;
 int apr_hash_set (int *,scalar_t__*,int,struct revmap_t*) ;
 void* apr_palloc (int *,int) ;
 int stderr ;
 int svn_cmdline_fprintf (int ,int *,int ,scalar_t__,...) ;
 int svn_hash_gets (int *,int ) ;
 int svn_hash_sets (int *,int ,int ) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_repos__dump_revision_record (int ,int ,int ,int *,void*,int *) ;
 int svn_string_create (int ,int *) ;

__attribute__((used)) static svn_error_t *
output_revision(struct revision_baton_t *rb)
{
  svn_boolean_t write_out_rev = FALSE;
  apr_pool_t *hash_pool = apr_hash_pool_get(rb->props);
  apr_pool_t *subpool = svn_pool_create(hash_pool);

  rb->writing_begun = TRUE;







  if ((! rb->pb->preserve_revprops)
      && (! rb->has_nodes)
      && rb->had_dropped_nodes
      && (! rb->pb->drop_empty_revs)
      && (! rb->pb->drop_all_empty_revs))
    {
      apr_hash_t *old_props = rb->props;
      rb->props = apr_hash_make(hash_pool);
      svn_hash_sets(rb->props, SVN_PROP_REVISION_DATE,
                    svn_hash_gets(old_props, SVN_PROP_REVISION_DATE));
      svn_hash_sets(rb->props, SVN_PROP_REVISION_LOG,
                    svn_string_create(_("This is an empty revision for "
                                        "padding."), hash_pool));
    }
  if (rb->has_nodes || (rb->rev_orig == 0))
    write_out_rev = TRUE;
  else if (rb->pb->drop_empty_revs)
    write_out_rev = ! rb->had_dropped_nodes;
  else if (! rb->pb->drop_all_empty_revs)
    write_out_rev = TRUE;

  if (write_out_rev)
    {

      SVN_ERR(svn_repos__dump_revision_record(rb->pb->out_stream,
                                              rb->rev_actual,
                                              rb->original_headers,
                                              rb->props,
                                              FALSE ,
                                              subpool));


      if (rb->rev_orig > 0
          && !SVN_IS_VALID_REVNUM(rb->pb->oldest_original_rev))
        rb->pb->oldest_original_rev = rb->rev_orig;

      if (rb->pb->do_renumber_revs)
        {
          svn_revnum_t *rr_key;
          struct revmap_t *rr_val;
          apr_pool_t *rr_pool = apr_hash_pool_get(rb->pb->renumber_history);
          rr_key = apr_palloc(rr_pool, sizeof(*rr_key));
          rr_val = apr_palloc(rr_pool, sizeof(*rr_val));
          *rr_key = rb->rev_orig;
          rr_val->rev = rb->rev_actual;
          rr_val->was_dropped = FALSE;
          apr_hash_set(rb->pb->renumber_history, rr_key,
                       sizeof(*rr_key), rr_val);
          rb->pb->last_live_revision = rb->rev_actual;
        }

      if (! rb->pb->quiet)
        SVN_ERR(svn_cmdline_fprintf(stderr, subpool,
                                    _("Revision %ld committed as %ld.\n"),
                                    rb->rev_orig, rb->rev_actual));
    }
  else
    {

      rb->pb->rev_drop_count++;
      if (rb->pb->do_renumber_revs)
        {
          svn_revnum_t *rr_key;
          struct revmap_t *rr_val;
          apr_pool_t *rr_pool = apr_hash_pool_get(rb->pb->renumber_history);
          rr_key = apr_palloc(rr_pool, sizeof(*rr_key));
          rr_val = apr_palloc(rr_pool, sizeof(*rr_val));
          *rr_key = rb->rev_orig;
          rr_val->rev = rb->pb->last_live_revision;
          rr_val->was_dropped = TRUE;
          apr_hash_set(rb->pb->renumber_history, rr_key,
                       sizeof(*rr_key), rr_val);
        }

      if (! rb->pb->quiet)
        SVN_ERR(svn_cmdline_fprintf(stderr, subpool,
                                    _("Revision %ld skipped.\n"),
                                    rb->rev_orig));
    }
  svn_pool_destroy(subpool);
  return SVN_NO_ERROR;
}
