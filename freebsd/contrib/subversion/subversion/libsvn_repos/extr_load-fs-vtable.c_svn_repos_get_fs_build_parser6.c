
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_repos_t ;
struct TYPE_3__ {int apply_textdelta; int delete_node_property; int close_revision; int close_node; int set_fulltext; int remove_node_props; int set_node_property; int set_revision_property; int new_node_record; int new_revision_record; int uuid_record; int * magic_header_record; } ;
typedef TYPE_1__ svn_repos_parse_fns3_t ;
typedef int svn_repos_notify_func_t ;
typedef int svn_error_t ;
typedef void* svn_boolean_t ;
struct parse_baton {int uuid_action; char const* parent_dir; void* normalize_props; void* ignore_dates; void* use_post_commit_hook; void* use_pre_commit_hook; scalar_t__ end_rev; scalar_t__ start_rev; void* last_rev_mapped; void* oldest_dumpstream_rev; int rev_map; int notify_pool; int * pool; void* notify_baton; int notify_func; void* validate_props; void* use_history; int fs; int * repos; } ;
typedef enum svn_repos_load_uuid { ____Placeholder_svn_repos_load_uuid } svn_repos_load_uuid ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT (int) ;
 void* SVN_INVALID_REVNUM ;
 scalar_t__ SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int apply_textdelta ;
 int apr_hash_make (int *) ;
 void* apr_pcalloc (int *,int) ;
 int close_node ;
 int close_revision ;
 int delete_node_property ;
 int new_node_record ;
 int new_revision_record ;
 int remove_node_props ;
 int set_fulltext ;
 int set_node_property ;
 int set_revision_property ;
 int svn_pool_create (int *) ;
 char* svn_relpath_canonicalize (char const*,int *) ;
 int svn_repos_fs (int *) ;
 int uuid_record ;

svn_error_t *
svn_repos_get_fs_build_parser6(const svn_repos_parse_fns3_t **callbacks,
                               void **parse_baton,
                               svn_repos_t *repos,
                               svn_revnum_t start_rev,
                               svn_revnum_t end_rev,
                               svn_boolean_t use_history,
                               svn_boolean_t validate_props,
                               enum svn_repos_load_uuid uuid_action,
                               const char *parent_dir,
                               svn_boolean_t use_pre_commit_hook,
                               svn_boolean_t use_post_commit_hook,
                               svn_boolean_t ignore_dates,
                               svn_boolean_t normalize_props,
                               svn_repos_notify_func_t notify_func,
                               void *notify_baton,
                               apr_pool_t *pool)
{
  svn_repos_parse_fns3_t *parser = apr_pcalloc(pool, sizeof(*parser));
  struct parse_baton *pb = apr_pcalloc(pool, sizeof(*pb));

  if (parent_dir)
    parent_dir = svn_relpath_canonicalize(parent_dir, pool);

  SVN_ERR_ASSERT((SVN_IS_VALID_REVNUM(start_rev) &&
                  SVN_IS_VALID_REVNUM(end_rev))
                 || ((! SVN_IS_VALID_REVNUM(start_rev)) &&
                     (! SVN_IS_VALID_REVNUM(end_rev))));
  if (SVN_IS_VALID_REVNUM(start_rev))
    SVN_ERR_ASSERT(start_rev <= end_rev);

  parser->magic_header_record = ((void*)0);
  parser->uuid_record = uuid_record;
  parser->new_revision_record = new_revision_record;
  parser->new_node_record = new_node_record;
  parser->set_revision_property = set_revision_property;
  parser->set_node_property = set_node_property;
  parser->remove_node_props = remove_node_props;
  parser->set_fulltext = set_fulltext;
  parser->close_node = close_node;
  parser->close_revision = close_revision;
  parser->delete_node_property = delete_node_property;
  parser->apply_textdelta = apply_textdelta;

  pb->repos = repos;
  pb->fs = svn_repos_fs(repos);
  pb->use_history = use_history;
  pb->validate_props = validate_props;
  pb->notify_func = notify_func;
  pb->notify_baton = notify_baton;
  pb->uuid_action = uuid_action;
  pb->parent_dir = parent_dir;
  pb->pool = pool;
  pb->notify_pool = svn_pool_create(pool);
  pb->rev_map = apr_hash_make(pool);
  pb->oldest_dumpstream_rev = SVN_INVALID_REVNUM;
  pb->last_rev_mapped = SVN_INVALID_REVNUM;
  pb->start_rev = start_rev;
  pb->end_rev = end_rev;
  pb->use_pre_commit_hook = use_pre_commit_hook;
  pb->use_post_commit_hook = use_post_commit_hook;
  pb->ignore_dates = ignore_dates;
  pb->normalize_props = normalize_props;

  *callbacks = parser;
  *parse_baton = pb;
  return SVN_NO_ERROR;
}
