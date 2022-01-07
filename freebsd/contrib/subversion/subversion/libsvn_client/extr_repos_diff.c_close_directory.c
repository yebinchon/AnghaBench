
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct edit_baton {TYPE_2__* processor; int ra_session; int * empty_hash; } ;
struct dir_baton {int * pool; int pdb; int right_source; int left_source; int path; int skip; TYPE_1__* propchanges; scalar_t__ added; int base_revision; scalar_t__ has_propchange; struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_8__ {int (* dir_closed ) (int ,int ,int ,int ,TYPE_2__*,int *) ;int (* dir_changed ) (int ,int ,int ,int *,int *,TYPE_1__*,int ,TYPE_2__*,int *) ;int (* dir_added ) (int ,int *,int ,int *,int *,int ,TYPE_2__*,int *) ;} ;
struct TYPE_7__ {scalar_t__ nelts; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int release_dir (struct dir_baton*) ;
 int remove_non_prop_changes (int *,TYPE_1__*) ;
 int stub1 (int ,int *,int ,int *,int *,int ,TYPE_2__*,int *) ;
 int stub2 (int ,int ,int ,int *,int *,TYPE_1__*,int ,TYPE_2__*,int *) ;
 int stub3 (int ,int ,int ,int ,TYPE_2__*,int *) ;
 int * svn_prop__patch (int *,TYPE_1__*,int *) ;
 int svn_ra_get_dir2 (int ,int *,int *,int **,int ,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
close_directory(void *dir_baton,
                apr_pool_t *pool)
{
  struct dir_baton *db = dir_baton;
  struct edit_baton *eb = db->edit_baton;
  apr_pool_t *scratch_pool;
  apr_hash_t *pristine_props;
  svn_boolean_t send_changed = FALSE;

  scratch_pool = db->pool;

  if ((db->has_propchange || db->added) && !db->skip)
    {
      if (db->added)
        {
          pristine_props = eb->empty_hash;
        }
      else
        {
          SVN_ERR(svn_ra_get_dir2(eb->ra_session, ((void*)0), ((void*)0), &pristine_props,
                                  db->path, db->base_revision, 0, scratch_pool));
        }

      if (db->propchanges->nelts > 0)
        {
          remove_non_prop_changes(pristine_props, db->propchanges);
        }

      if (db->propchanges->nelts > 0 || db->added)
        {
          apr_hash_t *right_props;

          right_props = svn_prop__patch(pristine_props, db->propchanges,
                                        scratch_pool);

          if (db->added)
            {
              SVN_ERR(eb->processor->dir_added(db->path,
                                           ((void*)0) ,
                                           db->right_source,
                                           ((void*)0) ,
                                           right_props,
                                           db->pdb,
                                           eb->processor,
                                           db->pool));
            }
          else
            {
              SVN_ERR(eb->processor->dir_changed(db->path,
                                                 db->left_source,
                                                 db->right_source,
                                                 pristine_props,
                                                 right_props,
                                                 db->propchanges,
                                                 db->pdb,
                                                 eb->processor,
                                                 db->pool));
            }

          send_changed = TRUE;
        }
    }

  if (! db->skip && !send_changed)
    {
      SVN_ERR(eb->processor->dir_closed(db->path,
                                        db->left_source,
                                        db->right_source,
                                        db->pdb,
                                        eb->processor,
                                        db->pool));
    }
  SVN_ERR(release_dir(db));

  return SVN_NO_ERROR;
}
