
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
struct TYPE_5__ {int * conn; } ;
typedef TYPE_1__ svn_ra_svn__session_baton_t ;
typedef int svn_ra_svn__list_t ;
struct TYPE_6__ {TYPE_1__* priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int * (* svn_ra_lock_callback_t ) (void*,char const*,int ,int *,int *,int *) ;
typedef int svn_lock_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int N_ (char*) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_IS_LOCK_ERROR (int *) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this (int *,void const**,int *,void**) ;
 int handle_auth_request (TYPE_1__*,int *) ;
 int handle_unsupported_cmd (int ,int ) ;
 int parse_lock (int *,int *,int **) ;
 int svn_error_clear (int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_ra_svn__read_cmd_response (int *,int *,char*,int **) ;
 int svn_ra_svn__write_cmd_lock (int *,int *,char const*,char const*,int ,int ) ;

__attribute__((used)) static svn_error_t *ra_svn_lock_compat(svn_ra_session_t *session,
                                       apr_hash_t *path_revs,
                                       const char *comment,
                                       svn_boolean_t steal_lock,
                                       svn_ra_lock_callback_t lock_func,
                                       void *lock_baton,
                                       apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess = session->priv;
  svn_ra_svn_conn_t* conn = sess->conn;
  svn_ra_svn__list_t *list;
  apr_hash_index_t *hi;
  apr_pool_t *iterpool = svn_pool_create(pool);

  for (hi = apr_hash_first(pool, path_revs); hi; hi = apr_hash_next(hi))
    {
      svn_lock_t *lock;
      const void *key;
      const char *path;
      void *val;
      svn_revnum_t *revnum;
      svn_error_t *err, *callback_err = ((void*)0);

      svn_pool_clear(iterpool);

      apr_hash_this(hi, &key, ((void*)0), &val);
      path = key;
      revnum = val;

      SVN_ERR(svn_ra_svn__write_cmd_lock(conn, iterpool, path, comment,
                                         steal_lock, *revnum));


      SVN_ERR(handle_unsupported_cmd(handle_auth_request(sess, pool),
                                     N_("Server doesn't support "
                                        "the lock command")));

      err = svn_ra_svn__read_cmd_response(conn, iterpool, "l", &list);

      if (!err)
        SVN_ERR(parse_lock(list, iterpool, &lock));

      if (err && !SVN_ERR_IS_LOCK_ERROR(err))
        return err;

      if (lock_func)
        callback_err = lock_func(lock_baton, path, TRUE, err ? ((void*)0) : lock,
                                 err, iterpool);

      svn_error_clear(err);

      if (callback_err)
        return callback_err;
    }

  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
