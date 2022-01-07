
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct ev2_edit_baton {TYPE_1__* exb; int base_relpath; int edit_pool; } ;
struct ev2_dir_baton {int base_revision; int path; struct ev2_edit_baton* eb; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int baton; int (* start_edit ) (int ,int ) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 struct ev2_dir_baton* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int ,int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static svn_error_t *
ev2_open_root(void *edit_baton,
              svn_revnum_t base_revision,
              apr_pool_t *result_pool,
              void **root_baton)
{
  struct ev2_dir_baton *db = apr_pcalloc(result_pool, sizeof(*db));
  struct ev2_edit_baton *eb = edit_baton;

  db->eb = eb;
  db->path = apr_pstrdup(eb->edit_pool, eb->base_relpath);
  db->base_revision = base_revision;

  *root_baton = db;

  if (eb->exb->start_edit)
    SVN_ERR(eb->exb->start_edit(eb->exb->baton, base_revision));

  return SVN_NO_ERROR;
}
