
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct file_baton {int pool; int right_source; int skip; int pfb; int pristine_props; } ;
struct edit_baton {TYPE_1__* processor; int target_revision; int empty_hash; } ;
struct dir_baton {int pdb; struct edit_baton* edit_baton; scalar_t__ skip_children; int pool; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int (* file_opened ) (int *,int *,char const*,int *,int ,int *,int ,TYPE_1__*,int ,int ) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 struct file_baton* make_file_baton (char const*,struct dir_baton*,int ,int ) ;
 int stub1 (int *,int *,char const*,int *,int ,int *,int ,TYPE_1__*,int ,int ) ;
 int svn_diff__source_create (int ,int ) ;

__attribute__((used)) static svn_error_t *
add_file(const char *path,
         void *parent_baton,
         const char *copyfrom_path,
         svn_revnum_t copyfrom_revision,
         apr_pool_t *pool,
         void **file_baton)
{
  struct dir_baton *pb = parent_baton;
  struct edit_baton *eb = pb->edit_baton;
  struct file_baton *fb;



  fb = make_file_baton(path, pb, TRUE, pb->pool);
  *file_baton = fb;


  if (pb->skip_children)
    {
      fb->skip = TRUE;
      return SVN_NO_ERROR;
    }

  fb->pristine_props = pb->edit_baton->empty_hash;

  fb->right_source = svn_diff__source_create(eb->target_revision, fb->pool);

  SVN_ERR(eb->processor->file_opened(&fb->pfb,
                                     &fb->skip,
                                     path,
                                     ((void*)0),
                                     fb->right_source,
                                     ((void*)0) ,
                                     pb->pdb,
                                     eb->processor,
                                     fb->pool, fb->pool));

  return SVN_NO_ERROR;
}
