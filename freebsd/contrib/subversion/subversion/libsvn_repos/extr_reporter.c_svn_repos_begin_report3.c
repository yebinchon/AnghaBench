
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_5__ {int fs; } ;
typedef TYPE_1__ svn_repos_t ;
typedef int svn_repos_authz_func_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_depth_t ;
typedef int svn_delta_editor_t ;
typedef void* svn_boolean_t ;
struct TYPE_6__ {int repos_uuid; int reader; int * pool; int revision_infos; void* authz_read_baton; int authz_read_func; void* edit_baton; int const* editor; int is_switch; void* send_copyfrom_args; void* ignore_ancestry; scalar_t__ requested_depth; int zero_copy_limit; void* text_deltas; void* fs_base; void* t_path; int t_rev; int s_operand; TYPE_1__* repos; } ;
typedef TYPE_2__ report_baton_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_REPOS_BAD_ARGS ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int apr_hash_make (int *) ;
 TYPE_2__* apr_palloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 scalar_t__ svn_depth_exclude ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_fs_get_uuid (int ,char const**,int *) ;
 void* svn_fspath__canonicalize (char const*,int *) ;
 void* svn_fspath__join (void*,char const*,int *) ;
 int svn_spillbuf__reader_create (int,int,int *) ;
 int svn_string_create (char const*,int *) ;

svn_error_t *
svn_repos_begin_report3(void **report_baton,
                        svn_revnum_t revnum,
                        svn_repos_t *repos,
                        const char *fs_base,
                        const char *s_operand,
                        const char *switch_path,
                        svn_boolean_t text_deltas,
                        svn_depth_t depth,
                        svn_boolean_t ignore_ancestry,
                        svn_boolean_t send_copyfrom_args,
                        const svn_delta_editor_t *editor,
                        void *edit_baton,
                        svn_repos_authz_func_t authz_read_func,
                        void *authz_read_baton,
                        apr_size_t zero_copy_limit,
                        apr_pool_t *pool)
{
  report_baton_t *b;
  const char *uuid;

  if (depth == svn_depth_exclude)
    return svn_error_create(SVN_ERR_REPOS_BAD_ARGS, ((void*)0),
                            _("Request depth 'exclude' not supported"));

  SVN_ERR(svn_fs_get_uuid(repos->fs, &uuid, pool));



  b = apr_palloc(pool, sizeof(*b));
  b->repos = repos;
  b->fs_base = svn_fspath__canonicalize(fs_base, pool);
  b->s_operand = apr_pstrdup(pool, s_operand);
  b->t_rev = revnum;
  b->t_path = switch_path ? svn_fspath__canonicalize(switch_path, pool)
                          : svn_fspath__join(b->fs_base, s_operand, pool);
  b->text_deltas = text_deltas;
  b->zero_copy_limit = zero_copy_limit;
  b->requested_depth = depth;
  b->ignore_ancestry = ignore_ancestry;
  b->send_copyfrom_args = send_copyfrom_args;
  b->is_switch = (switch_path != ((void*)0));
  b->editor = editor;
  b->edit_baton = edit_baton;
  b->authz_read_func = authz_read_func;
  b->authz_read_baton = authz_read_baton;
  b->revision_infos = apr_hash_make(pool);
  b->pool = pool;
  b->reader = svn_spillbuf__reader_create(1000 ,
                                          1000000 ,
                                          pool);
  b->repos_uuid = svn_string_create(uuid, pool);


  *report_baton = b;
  return SVN_NO_ERROR;
}
