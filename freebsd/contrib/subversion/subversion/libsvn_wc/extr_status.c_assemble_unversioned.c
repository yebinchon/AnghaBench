
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ actual_kind; int * changelist; scalar_t__ conflicted; scalar_t__ ood_kind; void* ood_changed_rev; void* changed_rev; void* revision; void* node_status; void* repos_prop_status; void* repos_text_status; void* repos_node_status; void* prop_status; void* text_status; void* filesize; int depth; int kind; } ;
typedef TYPE_1__ svn_wc_status3_t ;
struct TYPE_8__ {TYPE_1__ s; } ;
typedef TYPE_2__ svn_wc__internal_status_t ;
typedef int svn_wc__db_t ;
struct TYPE_9__ {scalar_t__ kind; void* filesize; scalar_t__ special; } ;
typedef TYPE_3__ svn_io_dirent2_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 void* SVN_INVALID_FILESIZE ;
 void* SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 int svn_depth_unknown ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 scalar_t__ svn_node_symlink ;
 int svn_node_unknown ;
 void* svn_wc_status_conflicted ;
 void* svn_wc_status_ignored ;
 void* svn_wc_status_none ;
 void* svn_wc_status_unversioned ;

__attribute__((used)) static svn_error_t *
assemble_unversioned(svn_wc__internal_status_t **status,
                     svn_wc__db_t *db,
                     const char *local_abspath,
                     const svn_io_dirent2_t *dirent,
                     svn_boolean_t tree_conflicted,
                     svn_boolean_t is_ignored,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  svn_wc__internal_status_t *inner_status;
  svn_wc_status3_t *stat;


  inner_status = apr_pcalloc(result_pool, sizeof(*inner_status));
  stat = &inner_status->s;


  stat->kind = svn_node_unknown;
  stat->depth = svn_depth_unknown;
  if (dirent)
    {
      stat->actual_kind = dirent->special ? svn_node_symlink
                                           : dirent->kind;
      stat->filesize = (dirent->kind == svn_node_file)
                            ? dirent->filesize
                            : SVN_INVALID_FILESIZE;
    }
  else
    {
       stat->actual_kind = svn_node_none;
       stat->filesize = SVN_INVALID_FILESIZE;
    }

  stat->node_status = svn_wc_status_none;
  stat->text_status = svn_wc_status_none;
  stat->prop_status = svn_wc_status_none;
  stat->repos_node_status = svn_wc_status_none;
  stat->repos_text_status = svn_wc_status_none;
  stat->repos_prop_status = svn_wc_status_none;






  if (dirent && dirent->kind != svn_node_none)
    {
      if (is_ignored)
        stat->node_status = svn_wc_status_ignored;
      else
        stat->node_status = svn_wc_status_unversioned;
    }
  else if (tree_conflicted)
    {


      stat->node_status = svn_wc_status_conflicted;
    }

  stat->revision = SVN_INVALID_REVNUM;
  stat->changed_rev = SVN_INVALID_REVNUM;
  stat->ood_changed_rev = SVN_INVALID_REVNUM;
  stat->ood_kind = svn_node_none;



  stat->conflicted = tree_conflicted;
  stat->changelist = ((void*)0);

  *status = inner_status;
  return SVN_NO_ERROR;
}
