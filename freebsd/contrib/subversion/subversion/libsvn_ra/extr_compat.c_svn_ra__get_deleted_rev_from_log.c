
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_error_t ;
struct TYPE_3__ {char const* path; scalar_t__ revision_deleted; } ;
typedef TYPE_1__ log_path_del_rev_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_CLIENT_BAD_REVISION ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int apr_array_make (int *,int ,int) ;
 int get_fs_path (char const**,int *,char const*,int *) ;
 int log_path_del_receiver ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,scalar_t__) ;
 int svn_ra_get_log2 (int *,int *,scalar_t__,scalar_t__,int ,int ,int ,int ,int ,int ,TYPE_1__*,int *) ;

svn_error_t *
svn_ra__get_deleted_rev_from_log(svn_ra_session_t *session,
                                 const char *rel_deleted_path,
                                 svn_revnum_t peg_revision,
                                 svn_revnum_t end_revision,
                                 svn_revnum_t *revision_deleted,
                                 apr_pool_t *pool)
{
  const char *fs_path;
  log_path_del_rev_t log_path_deleted_baton;


  SVN_ERR(get_fs_path(&fs_path, session, rel_deleted_path, pool));

  if (!SVN_IS_VALID_REVNUM(peg_revision))
    return svn_error_createf(SVN_ERR_CLIENT_BAD_REVISION, ((void*)0),
                             _("Invalid peg revision %ld"), peg_revision);
  if (!SVN_IS_VALID_REVNUM(end_revision))
    return svn_error_createf(SVN_ERR_CLIENT_BAD_REVISION, ((void*)0),
                             _("Invalid end revision %ld"), end_revision);
  if (end_revision <= peg_revision)
    return svn_error_create(SVN_ERR_CLIENT_BAD_REVISION, ((void*)0),
                            _("Peg revision must precede end revision"));

  log_path_deleted_baton.path = fs_path;
  log_path_deleted_baton.revision_deleted = SVN_INVALID_REVNUM;



  SVN_ERR(svn_ra_get_log2(session, ((void*)0), peg_revision, end_revision, 0,
                          TRUE, TRUE, FALSE,
                          apr_array_make(pool, 0, sizeof(char *)),
                          log_path_del_receiver, &log_path_deleted_baton,
                          pool));
  *revision_deleted = log_path_deleted_baton.revision_deleted;
  return SVN_NO_ERROR;
}
