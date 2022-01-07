
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int svn_sqlite__db_t ;
struct TYPE_12__ {int * rep_cache_db; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
struct TYPE_13__ {int pool; int path; TYPE_1__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
struct TYPE_14__ {int apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int APR_STATUS_IS_EEXIST (int ) ;
 int REP_CACHE_SCHEMA_FORMAT ;
 int STMT_CREATE_SCHEMA ;
 int SVN_ERR (int ) ;
 TYPE_3__* SVN_NO_ERROR ;
 int SVN_SQLITE__ERR_CLOSE (int ,int *) ;
 char* path_rep_cache_db (int ,int *) ;
 int statements ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 int svn_fs_x__exists_rep_cache (int *,TYPE_2__*,int *) ;
 char* svn_fs_x__path_current (TYPE_2__*,int *) ;
 int svn_io_copy_perms (char const*,char const*,int *) ;
 TYPE_3__* svn_io_file_create_empty (char const*,int *) ;
 int svn_sqlite__exec_statements (int *,int ) ;
 int svn_sqlite__mode_rwcreate ;
 int svn_sqlite__open (int **,char const*,int ,int ,int ,int *,int ,int ,int *) ;
 int svn_sqlite__read_schema_version (int*,int *,int *) ;

__attribute__((used)) static svn_error_t *
open_rep_cache(void *baton,
               apr_pool_t *scratch_pool)
{
  svn_fs_t *fs = baton;
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_sqlite__db_t *sdb;
  const char *db_path;
  int version;



  db_path = path_rep_cache_db(fs->path, scratch_pool);

  {



    svn_boolean_t exists;

    SVN_ERR(svn_fs_x__exists_rep_cache(&exists, fs, scratch_pool));
    if (!exists)
      {
        const char *current = svn_fs_x__path_current(fs, scratch_pool);
        svn_error_t *err = svn_io_file_create_empty(db_path, scratch_pool);

        if (err && !APR_STATUS_IS_EEXIST(err->apr_err))

          return svn_error_trace(err);
        else if (err)

          svn_error_clear(err);
        else

          SVN_ERR(svn_io_copy_perms(current, db_path, scratch_pool));
      }
  }

  SVN_ERR(svn_sqlite__open(&sdb, db_path,
                           svn_sqlite__mode_rwcreate, statements,
                           0, ((void*)0), 0,
                           fs->pool, scratch_pool));

  SVN_SQLITE__ERR_CLOSE(svn_sqlite__read_schema_version(&version, sdb,
                                                        scratch_pool),
                        sdb);
  if (version < REP_CACHE_SCHEMA_FORMAT)
    {


      SVN_SQLITE__ERR_CLOSE(svn_sqlite__exec_statements(sdb,
                                                        STMT_CREATE_SCHEMA),
                            sdb);
    }



  ffd->rep_cache_db = sdb;

  return SVN_NO_ERROR;
}
