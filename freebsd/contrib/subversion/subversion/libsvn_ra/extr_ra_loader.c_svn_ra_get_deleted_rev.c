
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_14__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_ra_session_t ;
struct TYPE_15__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_13__ {TYPE_3__* (* get_deleted_rev ) (TYPE_2__*,char const*,scalar_t__,scalar_t__,scalar_t__*,int *) ;} ;


 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_CLIENT_BAD_REVISION ;
 scalar_t__ SVN_ERR_UNSUPPORTED_FEATURE ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int _ (char*) ;
 TYPE_3__* stub1 (TYPE_2__*,char const*,scalar_t__,scalar_t__,scalar_t__*,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_create (int ,int *,int ) ;
 TYPE_3__* svn_error_createf (int ,int *,int ,scalar_t__) ;
 TYPE_3__* svn_ra__get_deleted_rev_from_log (TYPE_2__*,char const*,scalar_t__,scalar_t__,scalar_t__*,int *) ;
 int svn_relpath_is_canonical (char const*) ;

svn_error_t *
svn_ra_get_deleted_rev(svn_ra_session_t *session,
                       const char *path,
                       svn_revnum_t peg_revision,
                       svn_revnum_t end_revision,
                       svn_revnum_t *revision_deleted,
                       apr_pool_t *pool)
{
  svn_error_t *err;


  SVN_ERR_ASSERT(svn_relpath_is_canonical(path));

  if (!SVN_IS_VALID_REVNUM(peg_revision))
    return svn_error_createf(SVN_ERR_CLIENT_BAD_REVISION, ((void*)0),
                             _("Invalid peg revision %ld"), peg_revision);
  if (!SVN_IS_VALID_REVNUM(end_revision))
    return svn_error_createf(SVN_ERR_CLIENT_BAD_REVISION, ((void*)0),
                             _("Invalid end revision %ld"), end_revision);
  if (end_revision <= peg_revision)
    return svn_error_create(SVN_ERR_CLIENT_BAD_REVISION, ((void*)0),
                            _("Peg revision must precede end revision"));
  err = session->vtable->get_deleted_rev(session, path,
                                         peg_revision,
                                         end_revision,
                                         revision_deleted,
                                         pool);
  if (err && (err->apr_err == SVN_ERR_UNSUPPORTED_FEATURE))
    {
      svn_error_clear(err);


      err = svn_ra__get_deleted_rev_from_log(session, path, peg_revision,
                                             end_revision, revision_deleted,
                                             pool);
    }
  return err;
}
