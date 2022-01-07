
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ node_status; int prop_status; scalar_t__ repos_node_status; int text_status; scalar_t__ repos_text_status; scalar_t__ kind; scalar_t__ conflicted; scalar_t__ versioned; int repos_prop_status; int switched; int ood_changed_author; int ood_kind; int ood_changed_date; int ood_changed_rev; scalar_t__ repos_relpath; int repos_root_url; int repos_lock; int copied; } ;
typedef TYPE_1__ svn_wc_status3_t ;
struct TYPE_18__ {scalar_t__ text_status; int prop_status; scalar_t__ repos_text_status; int pristine_text_status; int pristine_prop_status; int repos_prop_status; int switched; int tree_conflict; int ood_last_cmt_author; int ood_kind; int ood_last_cmt_date; int ood_last_cmt_rev; int url; int repos_lock; int copied; int const* entry; } ;
typedef TYPE_2__ svn_wc_status2_t ;
typedef int svn_wc_entry_t ;
struct TYPE_19__ {int db; } ;
typedef TYPE_3__ svn_wc_context_t ;
typedef int svn_wc_conflict_description2_t ;
struct TYPE_20__ {scalar_t__ apr_err; } ;
typedef TYPE_4__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (TYPE_4__*) ;
 scalar_t__ SVN_ERR_NODE_UNEXPECTED_KIND ;
 TYPE_4__* SVN_NO_ERROR ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 int svn_error_clear (TYPE_4__*) ;
 int svn_lock_dup (int ,int *) ;
 scalar_t__ svn_node_file ;
 int svn_node_unknown ;
 int svn_path_url_add_component2 (int ,scalar_t__,int *) ;
 int svn_wc__cd2_to_cd (int const*,int *) ;
 TYPE_4__* svn_wc__get_entry (int const**,int ,char const*,int ,int ,int *,int *) ;
 TYPE_4__* svn_wc__get_tree_conflict (int const**,TYPE_3__*,char const*,int *,int *) ;
 TYPE_4__* svn_wc__internal_conflicted_p (scalar_t__*,scalar_t__*,int *,int ,char const*,int *) ;
 scalar_t__ svn_wc_status_added ;

 scalar_t__ svn_wc_status_deleted ;
 scalar_t__ svn_wc_status_missing ;



 scalar_t__ svn_wc_status_obstructed ;
 scalar_t__ svn_wc_status_replaced ;

svn_error_t *
svn_wc__status2_from_3(svn_wc_status2_t **status,
                       const svn_wc_status3_t *old_status,
                       svn_wc_context_t *wc_ctx,
                       const char *local_abspath,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  const svn_wc_entry_t *entry = ((void*)0);

  if (old_status == ((void*)0))
    {
      *status = ((void*)0);
      return SVN_NO_ERROR;
    }

  *status = apr_pcalloc(result_pool, sizeof(**status));

  if (old_status->versioned)
    {
      svn_error_t *err;
      err= svn_wc__get_entry(&entry, wc_ctx->db, local_abspath, FALSE,
                             svn_node_unknown, result_pool, scratch_pool);

      if (err && err->apr_err == SVN_ERR_NODE_UNEXPECTED_KIND)
        svn_error_clear(err);
      else
        SVN_ERR(err);
    }

  (*status)->entry = entry;
  (*status)->copied = old_status->copied;
  (*status)->repos_lock = svn_lock_dup(old_status->repos_lock, result_pool);

  if (old_status->repos_relpath)
    (*status)->url = svn_path_url_add_component2(old_status->repos_root_url,
                                                 old_status->repos_relpath,
                                                 result_pool);
  (*status)->ood_last_cmt_rev = old_status->ood_changed_rev;
  (*status)->ood_last_cmt_date = old_status->ood_changed_date;
  (*status)->ood_kind = old_status->ood_kind;
  (*status)->ood_last_cmt_author = old_status->ood_changed_author;

  if (old_status->conflicted)
    {
      const svn_wc_conflict_description2_t *tree_conflict2;
      SVN_ERR(svn_wc__get_tree_conflict(&tree_conflict2, wc_ctx, local_abspath,
                                        scratch_pool, scratch_pool));
      (*status)->tree_conflict = svn_wc__cd2_to_cd(tree_conflict2, result_pool);
    }

  (*status)->switched = old_status->switched;

  (*status)->text_status = old_status->node_status;
  (*status)->prop_status = old_status->prop_status;

  (*status)->repos_text_status = old_status->repos_node_status;
  (*status)->repos_prop_status = old_status->repos_prop_status;


  if (old_status->node_status == 130
      || old_status->node_status == 131)
    (*status)->text_status = old_status->text_status;


  if (old_status->repos_node_status == 130
      || old_status->repos_node_status == 131)
    (*status)->repos_text_status = old_status->repos_text_status;

  if (old_status->node_status == svn_wc_status_added)
    (*status)->prop_status = 129;


  switch (old_status->text_status)
    {
      case 129:
      case 128:
      case 130:
        (*status)->pristine_text_status = old_status->text_status;
        break;
      case 131:
      default:


        (*status)->pristine_text_status = 129;
        break;
    }


  switch (old_status->prop_status)
    {
      case 129:
      case 128:
      case 130:
        if (old_status->node_status != svn_wc_status_added
            && old_status->node_status != svn_wc_status_deleted
            && old_status->node_status != svn_wc_status_replaced)
          {
            (*status)->pristine_prop_status = old_status->prop_status;
          }
        else
          (*status)->pristine_prop_status = 129;
        break;
      case 131:
      default:


        (*status)->pristine_prop_status = 129;
        break;
    }

  if (old_status->versioned
      && old_status->conflicted
      && old_status->node_status != svn_wc_status_obstructed
      && (old_status->kind == svn_node_file
          || old_status->node_status != svn_wc_status_missing))
    {
      svn_boolean_t text_conflict_p, prop_conflict_p;




      SVN_ERR(svn_wc__internal_conflicted_p(&text_conflict_p,
                                            &prop_conflict_p,
                                            ((void*)0),
                                            wc_ctx->db, local_abspath,
                                            scratch_pool));

      if (text_conflict_p)
        (*status)->text_status = 131;

      if (prop_conflict_p)
        (*status)->prop_status = 131;
    }

  return SVN_NO_ERROR;
}
