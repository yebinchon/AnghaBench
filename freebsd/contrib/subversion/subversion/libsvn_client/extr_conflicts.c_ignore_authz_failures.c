
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;


 int SVN_ERR_AUTHZ_UNREADABLE ;
 int SVN_ERR_RA_DAV_FORBIDDEN ;
 int SVN_ERR_RA_NOT_AUTHORIZED ;
 int * SVN_NO_ERROR ;
 int svn_error_clear (int *) ;
 scalar_t__ svn_error_find_cause (int *,int ) ;

__attribute__((used)) static svn_error_t *
ignore_authz_failures(svn_error_t *err)
{
  if (err && ( svn_error_find_cause(err, SVN_ERR_AUTHZ_UNREADABLE)
              || svn_error_find_cause(err, SVN_ERR_RA_NOT_AUTHORIZED)
              || svn_error_find_cause(err, SVN_ERR_RA_DAV_FORBIDDEN)))
    {
      svn_error_clear(err);
      err = SVN_NO_ERROR;
    }

  return err;
}
