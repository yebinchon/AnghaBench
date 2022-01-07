
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kind; scalar_t__ text_status; scalar_t__ versioned; } ;
typedef TYPE_1__ svn_wc_status3_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_WC_LEFT_LOCAL_MOD ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_wc_status_conflicted ;
 scalar_t__ svn_wc_status_modified ;

__attribute__((used)) static svn_error_t *
remove_from_revision_status_callback(void *baton,
                                     const char *local_abspath,
                                     const svn_wc_status3_t *status,
                                     apr_pool_t *scratch_pool)
{

  if (status->versioned
      && status->kind == svn_node_file
      && (status->text_status == svn_wc_status_modified
          || status->text_status == svn_wc_status_conflicted))
    {
      return svn_error_createf(SVN_ERR_WC_LEFT_LOCAL_MOD, ((void*)0),
                               _("File '%s' has local modifications"),
                               svn_dirent_local_style(local_abspath,
                                                      scratch_pool));
    }
  return SVN_NO_ERROR;
}
