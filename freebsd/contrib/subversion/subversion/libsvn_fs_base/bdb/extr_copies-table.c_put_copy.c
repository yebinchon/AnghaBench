
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_skel_t ;
struct TYPE_10__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef int copy_t ;
struct TYPE_11__ {TYPE_5__* copies; } ;
typedef TYPE_3__ base_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_12__ {int (* put ) (TYPE_5__*,int ,int *,int *,int ) ;} ;
typedef int DBT ;


 int * BDB_WRAP (TYPE_2__*,int ,int ) ;
 int N_ (char*) ;
 int SVN_ERR (int ) ;
 int stub1 (TYPE_5__*,int ,int *,int *,int ) ;
 int svn_fs_base__skel_to_dbt (int *,int *,int *) ;
 int svn_fs_base__str_to_dbt (int *,char const*) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;
 int svn_fs_base__unparse_copy_skel (int **,int const*,int *) ;

__attribute__((used)) static svn_error_t *
put_copy(svn_fs_t *fs,
         const copy_t *copy,
         const char *copy_id,
         trail_t *trail,
         apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  svn_skel_t *copy_skel;
  DBT key, value;


  SVN_ERR(svn_fs_base__unparse_copy_skel(&copy_skel, copy, pool));



  svn_fs_base__str_to_dbt(&key, copy_id);
  svn_fs_base__skel_to_dbt(&value, copy_skel, pool);
  svn_fs_base__trail_debug(trail, "copies", "put");
  return BDB_WRAP(fs, N_("storing copy record"),
                  bfd->copies->put(bfd->copies, trail->db_txn,
                                   &key, &value, 0));
}
