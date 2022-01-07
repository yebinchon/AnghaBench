
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_ra_svn__list_t ;
struct TYPE_4__ {int expiration_date; int creation_date; int path; int comment; int owner; int token; } ;
typedef TYPE_1__ svn_lock_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fspath__canonicalize (int ,int *) ;
 TYPE_1__* svn_lock_create (int *) ;
 int svn_ra_svn__parse_tuple (int const*,char*,int *,int *,int *,int *,char const**,char const**) ;
 int svn_time_from_cstring (int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *parse_lock(const svn_ra_svn__list_t *list,
                               apr_pool_t *pool,
                               svn_lock_t **lock)
{
  const char *cdate, *edate;
  *lock = svn_lock_create(pool);
  SVN_ERR(svn_ra_svn__parse_tuple(list, "ccc(?c)c(?c)", &(*lock)->path,
                                  &(*lock)->token, &(*lock)->owner,
                                  &(*lock)->comment, &cdate, &edate));
  (*lock)->path = svn_fspath__canonicalize((*lock)->path, pool);
  SVN_ERR(svn_time_from_cstring(&(*lock)->creation_date, cdate, pool));
  if (edate)
    SVN_ERR(svn_time_from_cstring(&(*lock)->expiration_date, edate, pool));
  return SVN_NO_ERROR;
}
