
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct svn_wc__db_info_t {scalar_t__ kind; int status; int have_more_work; } ;
struct file_baton_t {int pool; void* right_src; void* left_src; int relpath; void* skip; int pfb; int local_abspath; int base_props; int base_checksum; int name; void* repos_only; void* ignoring_ancestry; } ;
struct edit_baton_t {TYPE_1__* processor; int db; int revnum; int ignore_ancestry; } ;
struct dir_baton_t {int pdb; int pool; int compared; int local_info; scalar_t__ repos_only; scalar_t__ skip_children; struct edit_baton_t* eb; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int (* file_opened ) (int *,void**,int ,void*,void*,int *,int ,TYPE_1__*,int ,int ) ;} ;


 int FALSE ;
 scalar_t__ NOT_PRESENT (int) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_MALFUNCTION () ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int apr_pstrdup (int ,int ) ;
 int ensure_local_info (struct dir_baton_t*,int *) ;
 struct file_baton_t* make_file_baton (char const*,int ,struct dir_baton_t*,int *) ;
 int stub1 (int *,void**,int ,void*,void*,int *,int ,TYPE_1__*,int ,int ) ;
 void* svn_diff__source_create (int ,int ) ;
 struct svn_wc__db_info_t* svn_hash_gets (int ,int ) ;
 int svn_hash_sets (int ,int ,char*) ;
 scalar_t__ svn_node_file ;
 int svn_wc__db_base_get_info (int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int ,int ,int ,int ) ;





__attribute__((used)) static svn_error_t *
open_file(const char *path,
          void *parent_baton,
          svn_revnum_t base_revision,
          apr_pool_t *file_pool,
          void **file_baton)
{
  struct dir_baton_t *pb = parent_baton;
  struct edit_baton_t *eb = pb->eb;
  struct file_baton_t *fb;

  fb = make_file_baton(path, FALSE, pb, file_pool);
  *file_baton = fb;

  if (pb->skip_children)
    fb->skip = TRUE;
  else if (pb->repos_only)
    fb->repos_only = TRUE;
  else
    {
      struct svn_wc__db_info_t *info;
      SVN_ERR(ensure_local_info(pb, file_pool));

      info = svn_hash_gets(pb->local_info, fb->name);

      if (!info || info->kind != svn_node_file || NOT_PRESENT(info->status))
        fb->repos_only = TRUE;

      if (!fb->repos_only)
        switch (info->status)
          {
            case 128:
            case 129:
              break;
            case 130:
              fb->repos_only = TRUE;
              if (!info->have_more_work)
                svn_hash_sets(pb->compared,
                              apr_pstrdup(pb->pool, fb->name), "");
              break;
            case 131:
              if (eb->ignore_ancestry)
                fb->ignoring_ancestry = TRUE;
              else
                fb->repos_only = TRUE;
              break;
            default:
              SVN_ERR_MALFUNCTION();
        }

      if (!fb->repos_only)
        {


          fb->right_src = svn_diff__source_create(SVN_INVALID_REVNUM, fb->pool);
          svn_hash_sets(pb->compared, apr_pstrdup(pb->pool, fb->name), "");
        }
    }

  fb->left_src = svn_diff__source_create(eb->revnum, fb->pool);

  SVN_ERR(svn_wc__db_base_get_info(((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                   ((void*)0), ((void*)0), ((void*)0), &fb->base_checksum, ((void*)0),
                                   ((void*)0), ((void*)0), &fb->base_props, ((void*)0),
                                   eb->db, fb->local_abspath,
                                   fb->pool, fb->pool));

  SVN_ERR(eb->processor->file_opened(&fb->pfb, &fb->skip,
                                     fb->relpath,
                                     fb->left_src,
                                     fb->right_src,
                                     ((void*)0) ,
                                     pb->pdb,
                                     eb->processor,
                                     fb->pool, fb->pool));

  return SVN_NO_ERROR;
}
