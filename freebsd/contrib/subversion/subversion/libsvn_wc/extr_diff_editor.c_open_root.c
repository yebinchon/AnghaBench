
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct edit_baton_t {char* target; TYPE_1__* processor; int revnum; int depth; void* root_opened; } ;
struct dir_baton_t {void* skip; int pool; void* right_src; void* left_src; int skip_children; int pdb; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int (* dir_opened ) (int *,void**,int *,char*,void*,void*,int *,int *,TYPE_1__*,int ,int ) ;} ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 struct dir_baton_t* make_dir_baton (char*,int *,struct edit_baton_t*,int ,int ,int *) ;
 int stub1 (int *,void**,int *,char*,void*,void*,int *,int *,TYPE_1__*,int ,int ) ;
 void* svn_diff__source_create (int ,int ) ;

__attribute__((used)) static svn_error_t *
open_root(void *edit_baton,
          svn_revnum_t base_revision,
          apr_pool_t *dir_pool,
          void **root_baton)
{
  struct edit_baton_t *eb = edit_baton;
  struct dir_baton_t *db;

  eb->root_opened = TRUE;
  db = make_dir_baton("", ((void*)0), eb, FALSE, eb->depth, dir_pool);
  *root_baton = db;

  if (eb->target[0] == '\0')
    {
      db->left_src = svn_diff__source_create(eb->revnum, db->pool);
      db->right_src = svn_diff__source_create(SVN_INVALID_REVNUM, db->pool);

      SVN_ERR(eb->processor->dir_opened(&db->pdb, &db->skip,
                                        &db->skip_children,
                                        "",
                                        db->left_src,
                                        db->right_src,
                                        ((void*)0) ,
                                        ((void*)0) ,
                                        eb->processor,
                                        db->pool, db->pool));
    }
  else
    db->skip = TRUE;

  return SVN_NO_ERROR;
}
