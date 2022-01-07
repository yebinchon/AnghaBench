
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_13__ {int flags; int refcount; int env; int key; } ;
typedef TYPE_1__ bdb_env_t ;
typedef int bdb_env_key_t ;
struct TYPE_14__ {TYPE_4__* error_info; TYPE_1__* bdb; int env; } ;
typedef TYPE_2__ bdb_env_baton_t ;
typedef int apr_pool_t ;
struct TYPE_15__ {int refcount; } ;


 int DB_PRIVATE ;
 int DB_RUNRECOVERY ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_BERKELEY_DB ;
 int * SVN_NO_ERROR ;
 int apr_hash_set (int ,int *,int,TYPE_1__*) ;
 TYPE_2__* apr_palloc (int *,int) ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,TYPE_2__*,int ,int ) ;
 int bdb_cache ;
 TYPE_1__* bdb_cache_get (int *,scalar_t__*) ;
 int bdb_cache_key (int *,int *,char const*,int *) ;
 int bdb_cache_pool ;
 int bdb_close (TYPE_1__*) ;
 int * bdb_open (TYPE_1__*,int,int) ;
 int cleanup_env_baton ;
 int create_env (TYPE_1__**,char const*,int ) ;
 char* db_strerror (int ) ;
 TYPE_4__* get_error_info (TYPE_1__*) ;
 int svn_error_clear (int ) ;
 int * svn_error_create (int ,int *,char*) ;
 int * svn_error_trace (int *) ;
 int svn_pool_create (int ) ;

__attribute__((used)) static svn_error_t *
svn_fs_bdb__open_internal(bdb_env_baton_t **bdb_batonp,
                          const char *path,
                          u_int32_t flags, int mode,
                          apr_pool_t *pool)
{
  bdb_env_key_t key;
  bdb_env_t *bdb;
  svn_boolean_t panic;







  SVN_ERR(bdb_cache_key(&key, ((void*)0), path, pool));

  bdb = bdb_cache_get(&key, &panic);
  if (panic)
    return svn_error_create(SVN_ERR_FS_BERKELEY_DB, ((void*)0),
                            db_strerror(DB_RUNRECOVERY));


  if (bdb && bdb->flags != flags)
    {

      if ((flags ^ bdb->flags) & DB_PRIVATE)
        {
          if (flags & DB_PRIVATE)
            return svn_error_create(SVN_ERR_FS_BERKELEY_DB, ((void*)0),
                                    "Reopening a public Berkeley DB"
                                    " environment with private attributes");
          else
            return svn_error_create(SVN_ERR_FS_BERKELEY_DB, ((void*)0),
                                    "Reopening a private Berkeley DB"
                                    " environment with public attributes");
        }


      return svn_error_create(SVN_ERR_FS_BERKELEY_DB, ((void*)0),
                              "Reopening a Berkeley DB environment"
                              " with different attributes");
    }

  if (!bdb)
    {
      svn_error_t *err;

      SVN_ERR(create_env(&bdb, path, svn_pool_create(bdb_cache_pool)));
      err = bdb_open(bdb, flags, mode);
      if (err)
        {

          svn_error_clear(bdb_close(bdb));
          return svn_error_trace(err);
        }

      apr_hash_set(bdb_cache, &bdb->key, sizeof bdb->key, bdb);
      bdb->flags = flags;
      bdb->refcount = 1;
    }
  else
    {
      ++bdb->refcount;
    }

  *bdb_batonp = apr_palloc(pool, sizeof **bdb_batonp);
  (*bdb_batonp)->env = bdb->env;
  (*bdb_batonp)->bdb = bdb;
  (*bdb_batonp)->error_info = get_error_info(bdb);
  ++(*bdb_batonp)->error_info->refcount;
  apr_pool_cleanup_register(pool, *bdb_batonp, cleanup_env_baton,
                            apr_pool_cleanup_null);

  return SVN_NO_ERROR;
}
