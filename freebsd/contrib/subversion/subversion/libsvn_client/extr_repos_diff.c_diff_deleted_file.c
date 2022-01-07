
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_diff_source_t ;
typedef scalar_t__ svn_boolean_t ;
struct file_baton {int pfb; int pristine_props; int path_start_revision; int path; } ;
struct edit_baton {TYPE_1__* processor; int text_deltas; int cancel_baton; int (* cancel_func ) (int ) ;int revision; } ;
struct dir_baton {int pdb; struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;
struct TYPE_3__ {int (* file_deleted ) (int ,int *,int ,int ,int ,TYPE_1__*,int *) ;int (* file_opened ) (int *,scalar_t__*,char const*,int *,int *,int *,int ,TYPE_1__*,int *,int *) ;} ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_file_from_ra (struct file_baton*,int,int *) ;
 struct file_baton* make_file_baton (char const*,struct dir_baton*,scalar_t__,int *) ;
 int stub1 (int ) ;
 int stub2 (int *,scalar_t__*,char const*,int *,int *,int *,int ,TYPE_1__*,int *,int *) ;
 int stub3 (int ) ;
 int stub4 (int ,int *,int ,int ,int ,TYPE_1__*,int *) ;
 int * svn_diff__source_create (int ,int *) ;

__attribute__((used)) static svn_error_t *
diff_deleted_file(const char *path,
                  struct dir_baton *db,
                  apr_pool_t *scratch_pool)
{
  struct edit_baton *eb = db->edit_baton;
  struct file_baton *fb = make_file_baton(path, db, FALSE, scratch_pool);
  svn_boolean_t skip = FALSE;
  svn_diff_source_t *left_source = svn_diff__source_create(eb->revision,
                                                           scratch_pool);

  if (eb->cancel_func)
    SVN_ERR(eb->cancel_func(eb->cancel_baton));

  SVN_ERR(eb->processor->file_opened(&fb->pfb, &skip, path,
                                     left_source,
                                     ((void*)0) ,
                                     ((void*)0) ,
                                     db->pdb,
                                     eb->processor,
                                     scratch_pool, scratch_pool));

  if (eb->cancel_func)
    SVN_ERR(eb->cancel_func(eb->cancel_baton));

  if (skip)
    return SVN_NO_ERROR;

  SVN_ERR(get_file_from_ra(fb, ! eb->text_deltas, scratch_pool));

  SVN_ERR(eb->processor->file_deleted(fb->path,
                                      left_source,
                                      fb->path_start_revision,
                                      fb->pristine_props,
                                      fb->pfb,
                                      eb->processor,
                                      scratch_pool));

  return SVN_NO_ERROR;
}
