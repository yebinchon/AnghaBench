
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


struct TYPE_25__ {int pool; TYPE_3__* fs; } ;
typedef TYPE_1__ trail_t ;
struct TYPE_26__ {int data; int len; } ;
typedef TYPE_2__ svn_string_t ;
typedef scalar_t__ svn_revnum_t ;
struct TYPE_27__ {int path; } ;
typedef TYPE_3__ svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct TYPE_28__ {char const* txn_id; } ;
typedef TYPE_4__ revision_t ;
typedef int noderev ;
struct TYPE_29__ {char* created_path; int kind; } ;
typedef TYPE_5__ node_revision_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int SVN_PROP_REVISION_DATE ;
 int _ (char*) ;
 int apr_time_now () ;
 int copy_kind_real ;
 int memset (TYPE_5__*,int ,int) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (int ) ;
 int * svn_error_createf (int ,int ,int ,int ) ;
 int * svn_fs_base__id_create (char*,char*,char*,int ) ;
 int * svn_fs_base__set_rev_prop (TYPE_3__*,int ,int ,int *,TYPE_2__*,TYPE_1__*,int ) ;
 int svn_fs_base__txn_make_committed (TYPE_3__*,char const*,scalar_t__,TYPE_1__*,int ) ;
 int svn_fs_bdb__create_copy (TYPE_3__*,char const*,int *,int *,int *,int ,TYPE_1__*,int ) ;
 int svn_fs_bdb__create_txn (char const**,TYPE_3__*,int *,TYPE_1__*,int ) ;
 int svn_fs_bdb__put_node_revision (TYPE_3__*,int *,TYPE_5__*,TYPE_1__*,int ) ;
 int svn_fs_bdb__put_rev (scalar_t__*,TYPE_3__*,TYPE_4__*,TYPE_1__*,int ) ;
 int svn_fs_bdb__reserve_copy_id (char const**,TYPE_3__*,TYPE_1__*,int ) ;
 int svn_node_dir ;
 int svn_time_to_cstring (int ,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_dag_init_fs(void *baton,
                     trail_t *trail)
{
  node_revision_t noderev;
  revision_t revision;
  svn_revnum_t rev = SVN_INVALID_REVNUM;
  svn_fs_t *fs = trail->fs;
  svn_string_t date;
  const char *txn_id;
  const char *copy_id;
  svn_fs_id_t *root_id = svn_fs_base__id_create("0", "0", "0", trail->pool);


  memset(&noderev, 0, sizeof(noderev));
  noderev.kind = svn_node_dir;
  noderev.created_path = "/";
  SVN_ERR(svn_fs_bdb__put_node_revision(fs, root_id, &noderev,
                                        trail, trail->pool));


  SVN_ERR(svn_fs_bdb__create_txn(&txn_id, fs, root_id, trail, trail->pool));
  if (strcmp(txn_id, "0"))
    return svn_error_createf
      (SVN_ERR_FS_CORRUPT, 0,
       _("Corrupt DB: initial transaction id not '0' in filesystem '%s'"),
       fs->path);


  SVN_ERR(svn_fs_bdb__reserve_copy_id(&copy_id, fs, trail, trail->pool));
  if (strcmp(copy_id, "0"))
    return svn_error_createf
      (SVN_ERR_FS_CORRUPT, 0,
       _("Corrupt DB: initial copy id not '0' in filesystem '%s'"), fs->path);
  SVN_ERR(svn_fs_bdb__create_copy(fs, copy_id, ((void*)0), ((void*)0), root_id,
                                  copy_kind_real, trail, trail->pool));


  revision.txn_id = txn_id;
  SVN_ERR(svn_fs_bdb__put_rev(&rev, fs, &revision, trail, trail->pool));
  if (rev != 0)
    return svn_error_createf(SVN_ERR_FS_CORRUPT, 0,
                             _("Corrupt DB: initial revision number "
                               "is not '0' in filesystem '%s'"), fs->path);


  SVN_ERR(svn_fs_base__txn_make_committed(fs, txn_id, rev,
                                          trail, trail->pool));


  date.data = svn_time_to_cstring(apr_time_now(), trail->pool);
  date.len = strlen(date.data);
  return svn_fs_base__set_rev_prop(fs, 0, SVN_PROP_REVISION_DATE, ((void*)0), &date,
                                   trail, trail->pool);
}
