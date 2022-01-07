
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef void* svn_boolean_t ;
struct TYPE_7__ {TYPE_3__* target; int source; int yca; int source_ra_session; int target_ra_session; } ;
typedef TYPE_1__ source_and_target_t ;
struct TYPE_8__ {void* allow_switched_subtrees; void* allow_local_mods; void* allow_mixed_rev; TYPE_6__* target; int right; int yca; int is_reintegrate_like; int base; } ;
typedef TYPE_2__ automatic_merge_t ;
typedef int apr_pool_t ;
struct TYPE_10__ {int url; } ;
struct TYPE_9__ {TYPE_6__ loc; int abspath; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_CLIENT_UNRELATED_RESOURCES ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 void* apr_palloc (int *,int) ;
 int check_same_repos (int ,char const*,TYPE_6__*,char const*,int ,int *) ;
 int find_automatic_merge (int *,int *,TYPE_1__*,int *,int *,int *) ;
 int open_target_wc (TYPE_3__**,char const*,void*,void*,void*,int *,int *,int *) ;
 int svn_client__ra_session_from_path2 (int *,int *,char const*,int *,int const*,int const*,int *,int *) ;
 int svn_client_open_ra_session2 (int *,int ,int ,int *,int *,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;

__attribute__((used)) static svn_error_t *
client_find_automatic_merge(automatic_merge_t **merge_p,
                            const char *source_path_or_url,
                            const svn_opt_revision_t *source_revision,
                            const char *target_abspath,
                            svn_boolean_t allow_mixed_rev,
                            svn_boolean_t allow_local_mods,
                            svn_boolean_t allow_switched_subtrees,
                            svn_client_ctx_t *ctx,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  source_and_target_t *s_t = apr_palloc(result_pool, sizeof(*s_t));
  automatic_merge_t *merge = apr_palloc(result_pool, sizeof(*merge));

  SVN_ERR_ASSERT(svn_dirent_is_absolute(target_abspath));






  SVN_ERR(open_target_wc(&s_t->target, target_abspath,
                         allow_mixed_rev,
                         allow_local_mods,
                         allow_switched_subtrees,
                         ctx, result_pool, scratch_pool));

  if (!s_t->target->loc.url)
    return svn_error_createf(SVN_ERR_CLIENT_UNRELATED_RESOURCES, ((void*)0),
                             _("Can't perform automatic merge into '%s' "
                               "because it is locally added and therefore "
                               "not related to the merge source"),
                             svn_dirent_local_style(target_abspath,
                                                    scratch_pool));


  SVN_ERR(svn_client_open_ra_session2(&s_t->target_ra_session,
                                      s_t->target->loc.url,
                                      s_t->target->abspath,
                                      ctx, result_pool, scratch_pool));
  SVN_ERR(svn_client__ra_session_from_path2(
            &s_t->source_ra_session, &s_t->source,
            source_path_or_url, ((void*)0), source_revision, source_revision,
            ctx, result_pool));


  SVN_ERR(check_same_repos(s_t->source, source_path_or_url,
                           &s_t->target->loc, target_abspath,
                           TRUE , scratch_pool));

  SVN_ERR(find_automatic_merge(&merge->base, &merge->is_reintegrate_like, s_t,
                               ctx, result_pool, scratch_pool));
  merge->yca = s_t->yca;
  merge->right = s_t->source;
  merge->target = &s_t->target->loc;
  merge->allow_mixed_rev = allow_mixed_rev;
  merge->allow_local_mods = allow_local_mods;
  merge->allow_switched_subtrees = allow_switched_subtrees;

  *merge_p = merge;



  return SVN_NO_ERROR;
}
