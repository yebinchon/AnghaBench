
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_2__ {int check_working_copy; } ;
struct edit_baton {TYPE_1__ wb; int db; int * target_basename; int anchor_abspath; } ;
struct dir_baton {char const* local_abspath; struct dir_baton* parent_baton; struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_wc_status_deleted ;
 int svn_wc_status_modified ;
 int tweak_statushash (struct dir_baton*,struct dir_baton*,int ,int ,int ,char const*,int ,int ,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
delete_entry(const char *path,
             svn_revnum_t revision,
             void *parent_baton,
             apr_pool_t *pool)
{
  struct dir_baton *db = parent_baton;
  struct edit_baton *eb = db->edit_baton;
  const char *local_abspath = svn_dirent_join(eb->anchor_abspath, path, pool);





  SVN_ERR(tweak_statushash(db, db, TRUE, eb->db, eb->wb.check_working_copy,
                           local_abspath,
                           svn_wc_status_deleted, 0, 0, revision, ((void*)0), pool));




  if (db->parent_baton && (! *eb->target_basename))
    SVN_ERR(tweak_statushash(db->parent_baton, db, TRUE,
                             eb->db, eb->wb.check_working_copy,
                             db->local_abspath,
                             svn_wc_status_modified, svn_wc_status_modified,
                             0, SVN_INVALID_REVNUM, ((void*)0), pool));

  return SVN_NO_ERROR;
}
