
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int path; TYPE_3__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
struct TYPE_12__ {int apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int bdb_env_baton_t ;
struct TYPE_13__ {int * bdb; int miscellaneous; int checksum_reps; int node_origins; int lock_tokens; int locks; int uuids; int strings; int representations; int changes; int copies; int transactions; int revisions; int nodes; } ;
typedef TYPE_3__ base_fs_data_t ;


 int SVN_ERR (int ) ;
 TYPE_2__* SVN_NO_ERROR ;
 int _ (char*) ;
 int cleanup_fs_db (TYPE_1__*,int *,char*) ;
 TYPE_2__* svn_error_createf (int ,TYPE_2__*,int ,int ) ;
 TYPE_2__* svn_fs_bdb__close (int *) ;

__attribute__((used)) static svn_error_t *
cleanup_fs(svn_fs_t *fs)
{
  base_fs_data_t *bfd = fs->fsap_data;
  bdb_env_baton_t *bdb = (bfd ? bfd->bdb : ((void*)0));

  if (!bdb)
    return SVN_NO_ERROR;


  SVN_ERR(cleanup_fs_db(fs, &bfd->nodes, "nodes"));
  SVN_ERR(cleanup_fs_db(fs, &bfd->revisions, "revisions"));
  SVN_ERR(cleanup_fs_db(fs, &bfd->transactions, "transactions"));
  SVN_ERR(cleanup_fs_db(fs, &bfd->copies, "copies"));
  SVN_ERR(cleanup_fs_db(fs, &bfd->changes, "changes"));
  SVN_ERR(cleanup_fs_db(fs, &bfd->representations, "representations"));
  SVN_ERR(cleanup_fs_db(fs, &bfd->strings, "strings"));
  SVN_ERR(cleanup_fs_db(fs, &bfd->uuids, "uuids"));
  SVN_ERR(cleanup_fs_db(fs, &bfd->locks, "locks"));
  SVN_ERR(cleanup_fs_db(fs, &bfd->lock_tokens, "lock-tokens"));
  SVN_ERR(cleanup_fs_db(fs, &bfd->node_origins, "node-origins"));
  SVN_ERR(cleanup_fs_db(fs, &bfd->checksum_reps, "checksum-reps"));
  SVN_ERR(cleanup_fs_db(fs, &bfd->miscellaneous, "miscellaneous"));


  bfd->bdb = 0;
  {
    svn_error_t *err = svn_fs_bdb__close(bdb);
    if (err)
      return svn_error_createf
        (err->apr_err, err,
         _("Berkeley DB error for filesystem '%s'"
           " while closing environment:\n"),
         fs->path);
  }
  return SVN_NO_ERROR;
}
