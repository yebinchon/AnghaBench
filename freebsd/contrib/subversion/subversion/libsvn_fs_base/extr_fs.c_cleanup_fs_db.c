
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int pool; TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_9__ {int bdb; } ;
typedef TYPE_2__ base_fs_data_t ;
struct TYPE_10__ {int (* close ) (TYPE_3__*,int ) ;} ;
typedef TYPE_3__ DB ;


 int BDB_WRAP (TYPE_1__*,char*,int) ;
 int DB_INCOMPLETE ;
 int DB_RUNRECOVERY ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* apr_psprintf (int ,char*,char const*) ;
 int stub1 (TYPE_3__*,int ) ;
 int svn_fs_bdb__get_panic (int ) ;
 int svn_fs_bdb__set_panic (int ) ;

__attribute__((used)) static svn_error_t *
cleanup_fs_db(svn_fs_t *fs, DB **db_ptr, const char *name)
{


  base_fs_data_t *bfd = fs->fsap_data;
  if (*db_ptr && !svn_fs_bdb__get_panic(bfd->bdb))
    {
      DB *db = *db_ptr;
      char *msg = apr_psprintf(fs->pool, "closing '%s' database", name);
      int db_err;

      *db_ptr = 0;
      db_err = db->close(db, 0);
      if (db_err == DB_RUNRECOVERY)
        {




          svn_fs_bdb__set_panic(bfd->bdb);
          db_err = 0;
        }
      SVN_ERR(BDB_WRAP(fs, msg, db_err));
    }

  return SVN_NO_ERROR;
}
