
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct svndumpfilter_opt_state {int skip_missing_merge_sources; int prefixes; int glob; int quiet; int preserve_revprops; scalar_t__ drop_all_empty_revs; scalar_t__ drop_empty_revs; scalar_t__ renumber_revs; } ;
struct parse_baton_t {int do_renumber_revs; int allow_deltas; void* oldest_original_rev; void* last_live_revision; void* renumber_history; void* dropped_nodes; scalar_t__ rev_drop_count; int skip_missing_merge_sources; int prefixes; int glob; int quiet; int preserve_revprops; scalar_t__ drop_all_empty_revs; scalar_t__ drop_empty_revs; int do_exclude; int out_stream; int in_stream; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 void* SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 void* apr_hash_make (int *) ;
 struct parse_baton_t* apr_palloc (int *,int) ;
 int svn_stream_for_stdin2 (int *,int ,int *) ;
 int svn_stream_for_stdout (int *,int *) ;

__attribute__((used)) static svn_error_t *
parse_baton_initialize(struct parse_baton_t **pb,
                       struct svndumpfilter_opt_state *opt_state,
                       svn_boolean_t do_exclude,
                       apr_pool_t *pool)
{
  struct parse_baton_t *baton = apr_palloc(pool, sizeof(*baton));


  SVN_ERR(svn_stream_for_stdin2(&baton->in_stream, TRUE, pool));


  SVN_ERR(svn_stream_for_stdout(&baton->out_stream, pool));

  baton->do_exclude = do_exclude;



  baton->do_renumber_revs =
    (opt_state->renumber_revs && (opt_state->drop_empty_revs
                                  || opt_state->drop_all_empty_revs));

  baton->drop_empty_revs = opt_state->drop_empty_revs;
  baton->drop_all_empty_revs = opt_state->drop_all_empty_revs;
  baton->preserve_revprops = opt_state->preserve_revprops;
  baton->quiet = opt_state->quiet;
  baton->glob = opt_state->glob;
  baton->prefixes = opt_state->prefixes;
  baton->skip_missing_merge_sources = opt_state->skip_missing_merge_sources;
  baton->rev_drop_count = 0;
  baton->dropped_nodes = apr_hash_make(pool);
  baton->renumber_history = apr_hash_make(pool);
  baton->last_live_revision = SVN_INVALID_REVNUM;
  baton->oldest_original_rev = SVN_INVALID_REVNUM;
  baton->allow_deltas = FALSE;

  *pb = baton;
  return SVN_NO_ERROR;
}
