
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct svn_wc__db_info_t {scalar_t__ kind; scalar_t__ status; } ;
struct file_baton_t {int pool; void* right_src; void* left_src; int relpath; void* skip; int pfb; int name; void* ignoring_ancestry; void* repos_only; } ;
struct edit_baton_t {TYPE_1__* processor; int revnum; int ignore_ancestry; } ;
struct dir_baton_t {int pdb; int pool; int compared; int local_info; scalar_t__ repos_only; scalar_t__ skip_children; struct edit_baton_t* eb; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int (* file_opened ) (int *,void**,int ,void*,void*,int *,int ,TYPE_1__*,int ,int ) ;} ;


 scalar_t__ NOT_PRESENT (scalar_t__) ;
 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int apr_pstrdup (int ,int ) ;
 int ensure_local_info (struct dir_baton_t*,int *) ;
 struct file_baton_t* make_file_baton (char const*,void*,struct dir_baton_t*,int *) ;
 int stub1 (int *,void**,int ,void*,void*,int *,int ,TYPE_1__*,int ,int ) ;
 void* svn_diff__source_create (int ,int ) ;
 struct svn_wc__db_info_t* svn_hash_gets (int ,int ) ;
 int svn_hash_sets (int ,int ,char*) ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_wc__db_status_added ;

__attribute__((used)) static svn_error_t *
add_file(const char *path,
         void *parent_baton,
         const char *copyfrom_path,
         svn_revnum_t copyfrom_revision,
         apr_pool_t *file_pool,
         void **file_baton)
{
  struct dir_baton_t *pb = parent_baton;
  struct edit_baton_t *eb = pb->eb;
  struct file_baton_t *fb;

  fb = make_file_baton(path, TRUE, pb, file_pool);
  *file_baton = fb;

  if (pb->skip_children)
    {
      fb->skip = TRUE;
      return SVN_NO_ERROR;
    }
  else if (pb->repos_only || !eb->ignore_ancestry)
    fb->repos_only = TRUE;
  else
    {
      struct svn_wc__db_info_t *info;
      SVN_ERR(ensure_local_info(pb, file_pool));

      info = svn_hash_gets(pb->local_info, fb->name);

      if (!info || info->kind != svn_node_file || NOT_PRESENT(info->status))
        fb->repos_only = TRUE;

      if (!fb->repos_only && info->status != svn_wc__db_status_added)
        fb->repos_only = TRUE;

      if (!fb->repos_only)
        {


          fb->right_src = svn_diff__source_create(SVN_INVALID_REVNUM, fb->pool);
          fb->ignoring_ancestry = TRUE;

          svn_hash_sets(pb->compared, apr_pstrdup(pb->pool, fb->name), "");
        }
    }

  fb->left_src = svn_diff__source_create(eb->revnum, fb->pool);

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
