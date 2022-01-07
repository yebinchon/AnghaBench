
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ kind; int moved_to_abspath; int moved_from_abspath; scalar_t__ conflicted; scalar_t__ versioned; int ood_changed_author; int ood_changed_date; int ood_changed_rev; int repos_lock; int repos_prop_status; int repos_text_status; int repos_node_status; int ood_kind; int depth; int changelist; int lock; scalar_t__ file_external; int switched; int repos_relpath; int repos_uuid; int repos_root_url; int changed_author; int changed_date; int changed_rev; int revision; int copied; int locked; void* prop_status; void* text_status; void* node_status; int filesize; } ;
typedef TYPE_1__ svn_wc_status3_t ;
typedef int svn_wc_context_t ;
typedef int svn_error_t ;
struct TYPE_7__ {scalar_t__ kind; char const* local_abspath; int moved_to_abspath; int moved_from_abspath; void* node_status; void* prop_status; void* text_status; TYPE_1__ const* backwards_compatibility_baton; int ood_changed_author; int ood_changed_date; int ood_changed_rev; int repos_lock; int repos_prop_status; int repos_text_status; int repos_node_status; int ood_kind; int depth; int changelist; int lock; int switched; scalar_t__ file_external; int repos_relpath; int repos_uuid; int repos_root_url; int changed_author; int changed_date; int changed_rev; int revision; int copied; int wc_is_locked; scalar_t__ conflicted; scalar_t__ versioned; int filesize; } ;
typedef TYPE_2__ svn_client_status_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 scalar_t__ svn_node_dir ;
 int svn_wc_conflicted_p3 (scalar_t__*,scalar_t__*,scalar_t__*,int *,char const*,int *) ;
 void* svn_wc_status_conflicted ;

svn_error_t *
svn_client__create_status(svn_client_status_t **cst,
                          svn_wc_context_t *wc_ctx,
                          const char *local_abspath,
                          const svn_wc_status3_t *status,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  *cst = apr_pcalloc(result_pool, sizeof(**cst));

  (*cst)->kind = status->kind;
  (*cst)->local_abspath = local_abspath;
  (*cst)->filesize = status->filesize;
  (*cst)->versioned = status->versioned;

  (*cst)->conflicted = status->conflicted;

  (*cst)->node_status = status->node_status;
  (*cst)->text_status = status->text_status;
  (*cst)->prop_status = status->prop_status;

  if (status->kind == svn_node_dir)
    (*cst)->wc_is_locked = status->locked;

  (*cst)->copied = status->copied;
  (*cst)->revision = status->revision;

  (*cst)->changed_rev = status->changed_rev;
  (*cst)->changed_date = status->changed_date;
  (*cst)->changed_author = status->changed_author;

  (*cst)->repos_root_url = status->repos_root_url;
  (*cst)->repos_uuid = status->repos_uuid;
  (*cst)->repos_relpath = status->repos_relpath;

  (*cst)->switched = status->switched;

  (*cst)->file_external = status->file_external;
  if (status->file_external)
    {
      (*cst)->switched = FALSE;
    }

  (*cst)->lock = status->lock;

  (*cst)->changelist = status->changelist;
  (*cst)->depth = status->depth;


  (*cst)->ood_kind = status->ood_kind;
  (*cst)->repos_node_status = status->repos_node_status;
  (*cst)->repos_text_status = status->repos_text_status;
  (*cst)->repos_prop_status = status->repos_prop_status;
  (*cst)->repos_lock = status->repos_lock;

  (*cst)->ood_changed_rev = status->ood_changed_rev;
  (*cst)->ood_changed_date = status->ood_changed_date;
  (*cst)->ood_changed_author = status->ood_changed_author;



  (*cst)->backwards_compatibility_baton = status;

  if (status->versioned && status->conflicted)
    {
      svn_boolean_t text_conflicted, prop_conflicted, tree_conflicted;




      SVN_ERR(svn_wc_conflicted_p3(&text_conflicted, &prop_conflicted,
                                   &tree_conflicted, wc_ctx, local_abspath,
                                   scratch_pool));

      if (text_conflicted)
        (*cst)->text_status = svn_wc_status_conflicted;

      if (prop_conflicted)
        (*cst)->prop_status = svn_wc_status_conflicted;


      if (text_conflicted || prop_conflicted)
        (*cst)->node_status = svn_wc_status_conflicted;
    }

  (*cst)->moved_from_abspath = status->moved_from_abspath;
  (*cst)->moved_to_abspath = status->moved_to_abspath;

  return SVN_NO_ERROR;
}
