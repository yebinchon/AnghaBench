
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
struct TYPE_15__ {char* local_abspath; scalar_t__ node_status; scalar_t__ repos_node_status; scalar_t__ prop_status; scalar_t__ repos_prop_status; int repos_lock; int lock; int changed_date; int changed_author; int changed_rev; scalar_t__ moved_to_abspath; scalar_t__ moved_from_abspath; int revision; scalar_t__ copied; scalar_t__ versioned; scalar_t__ file_external; scalar_t__ switched; scalar_t__ wc_is_locked; scalar_t__ conflicted; } ;
typedef TYPE_2__ svn_client_status_t ;
struct TYPE_16__ {int wc_ctx; } ;
typedef TYPE_3__ svn_client_ctx_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 int * apr_hash_make (int *) ;
 char const* apr_psprintf (int *,char*,int ) ;
 scalar_t__ combined_repos_status (TYPE_2__ const*) ;
 scalar_t__ combined_status (TYPE_2__ const*) ;
 char const* generate_status_desc (scalar_t__) ;
 char* make_relpath (char const*,char const*,scalar_t__,int *,int *) ;
 int stdout ;
 int * svn_cl__error_checked_fputs (int ,int ) ;
 int svn_cl__print_xml_commit (TYPE_1__**,int ,int ,int ,int *) ;
 int svn_cl__print_xml_lock (TYPE_1__**,int ,int *) ;
 char* svn_dirent_local_style (char const*,int *) ;
 int svn_hash_sets (int *,char*,char const*) ;
 TYPE_1__* svn_stringbuf_create_empty (int *) ;
 int svn_time_to_cstring (int ,int *) ;
 int svn_wc_conflicted_p3 (int *,int *,scalar_t__*,int ,char const*,int *) ;
 scalar_t__ svn_wc_status_deleted ;
 scalar_t__ svn_wc_status_none ;
 int svn_xml_make_close_tag (TYPE_1__**,int *,char*) ;
 int svn_xml_make_open_tag (TYPE_1__**,int *,int ,char*,char*,char const*,char*,...) ;
 int svn_xml_make_open_tag_hash (TYPE_1__**,int *,int ,char*,int *) ;
 int svn_xml_normal ;

svn_error_t *
svn_cl__print_status_xml(const char *target_abspath,
                         const char *target_path,
                         const char *path,
                         const svn_client_status_t *status,
                         svn_client_ctx_t *ctx,
                         apr_pool_t *pool)
{
  svn_stringbuf_t *sb = svn_stringbuf_create_empty(pool);
  apr_hash_t *att_hash;
  const char *local_abspath = status->local_abspath;
  svn_boolean_t tree_conflicted = FALSE;

  if (status->node_status == svn_wc_status_none
      && status->repos_node_status == svn_wc_status_none)
    return SVN_NO_ERROR;

  if (status->conflicted)
    SVN_ERR(svn_wc_conflicted_p3(((void*)0), ((void*)0), &tree_conflicted,
                                 ctx->wc_ctx, local_abspath, pool));

  svn_xml_make_open_tag(&sb, pool, svn_xml_normal, "entry",
                        "path", svn_dirent_local_style(path, pool),
                        SVN_VA_NULL);

  att_hash = apr_hash_make(pool);
  svn_hash_sets(att_hash, "item",
                generate_status_desc(combined_status(status)));

  svn_hash_sets(att_hash, "props",
                generate_status_desc(
                   (status->node_status != svn_wc_status_deleted)
                   ? status->prop_status
                   : svn_wc_status_none));
  if (status->wc_is_locked)
    svn_hash_sets(att_hash, "wc-locked", "true");
  if (status->copied)
    svn_hash_sets(att_hash, "copied", "true");
  if (status->switched)
    svn_hash_sets(att_hash, "switched", "true");
  if (status->file_external)
    svn_hash_sets(att_hash, "file-external", "true");
  if (status->versioned && ! status->copied)
    svn_hash_sets(att_hash, "revision",
                  apr_psprintf(pool, "%ld", status->revision));
  if (tree_conflicted)
    svn_hash_sets(att_hash, "tree-conflicted", "true");
  if (status->moved_from_abspath || status->moved_to_abspath)
    {
      const char *relpath;

      if (status->moved_from_abspath)
        {
          relpath = make_relpath(target_abspath, target_path,
                                 status->moved_from_abspath,
                                 pool, pool);
          relpath = svn_dirent_local_style(relpath, pool);
          svn_hash_sets(att_hash, "moved-from", relpath);
        }
      if (status->moved_to_abspath)
        {
          relpath = make_relpath(target_abspath, target_path,
                                 status->moved_to_abspath,
                                 pool, pool);
          relpath = svn_dirent_local_style(relpath, pool);
          svn_hash_sets(att_hash, "moved-to", relpath);
        }
    }
  svn_xml_make_open_tag_hash(&sb, pool, svn_xml_normal, "wc-status",
                             att_hash);

  if (SVN_IS_VALID_REVNUM(status->changed_rev))
    {
      svn_cl__print_xml_commit(&sb, status->changed_rev,
                               status->changed_author,
                               svn_time_to_cstring(status->changed_date,
                                                   pool),
                               pool);
    }

  if (status->lock)
    svn_cl__print_xml_lock(&sb, status->lock, pool);

  svn_xml_make_close_tag(&sb, pool, "wc-status");

  if (status->repos_node_status != svn_wc_status_none
      || status->repos_lock)
    {
      svn_xml_make_open_tag(&sb, pool, svn_xml_normal, "repos-status",
                            "item",
                            generate_status_desc(combined_repos_status(status)),
                            "props",
                            generate_status_desc(status->repos_prop_status),
                            SVN_VA_NULL);
      if (status->repos_lock)
        svn_cl__print_xml_lock(&sb, status->repos_lock, pool);

      svn_xml_make_close_tag(&sb, pool, "repos-status");
    }

  svn_xml_make_close_tag(&sb, pool, "entry");

  return svn_cl__error_checked_fputs(sb->data, stdout);
}
