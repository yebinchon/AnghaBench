
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_ra_svn_conn_t ;
struct TYPE_3__ {int comment; int owner; int token; int path; scalar_t__ expiration_date; scalar_t__ creation_date; } ;
typedef TYPE_1__ svn_lock_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_ra_svn__write_tuple (int *,int *,char*,int ,int ,int ,int ,char const*,char const*) ;
 char* svn_time_to_cstring (scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *write_lock(svn_ra_svn_conn_t *conn,
                               apr_pool_t *pool,
                               const svn_lock_t *lock)
{
  const char *cdate, *edate;

  cdate = svn_time_to_cstring(lock->creation_date, pool);
  edate = lock->expiration_date
    ? svn_time_to_cstring(lock->expiration_date, pool) : ((void*)0);
  SVN_ERR(svn_ra_svn__write_tuple(conn, pool, "ccc(?c)c(?c)", lock->path,
                                  lock->token, lock->owner, lock->comment,
                                  cdate, edate));

  return SVN_NO_ERROR;
}
