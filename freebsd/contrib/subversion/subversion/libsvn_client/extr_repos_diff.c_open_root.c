
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct edit_baton {TYPE_1__* processor; int target_revision; int revision; int pool; } ;
struct dir_baton {int pool; void* right_source; void* left_source; int skip_children; int skip; int pdb; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int (* dir_opened ) (int *,int *,int *,char*,void*,void*,int *,int *,TYPE_1__*,int ,int ) ;} ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 struct dir_baton* make_dir_baton (char*,int *,struct edit_baton*,int ,int ,int ) ;
 int stub1 (int *,int *,int *,char*,void*,void*,int *,int *,TYPE_1__*,int ,int ) ;
 void* svn_diff__source_create (int ,int ) ;

__attribute__((used)) static svn_error_t *
open_root(void *edit_baton,
          svn_revnum_t base_revision,
          apr_pool_t *pool,
          void **root_baton)
{
  struct edit_baton *eb = edit_baton;
  struct dir_baton *db = make_dir_baton("", ((void*)0), eb, FALSE, base_revision,
                                        eb->pool);

  db->left_source = svn_diff__source_create(eb->revision, db->pool);
  db->right_source = svn_diff__source_create(eb->target_revision, db->pool);

  SVN_ERR(eb->processor->dir_opened(&db->pdb,
                                    &db->skip,
                                    &db->skip_children,
                                    "",
                                    db->left_source,
                                    db->right_source,
                                    ((void*)0),
                                    ((void*)0),
                                    eb->processor,
                                    db->pool,
                                    db->pool ));

  *root_baton = db;
  return SVN_NO_ERROR;
}
