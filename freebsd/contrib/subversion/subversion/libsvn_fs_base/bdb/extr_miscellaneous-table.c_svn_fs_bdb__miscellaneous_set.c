
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
struct TYPE_11__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_12__ {TYPE_7__* miscellaneous; } ;
typedef TYPE_3__ base_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_13__ {int (* put ) (TYPE_7__*,int ,int *,int *,int ) ;int (* del ) (TYPE_7__*,int ,int *,int ) ;} ;
typedef int DBT ;


 int * BDB_WRAP (TYPE_2__*,int ,int ) ;
 int N_ (char*) ;
 int stub1 (TYPE_7__*,int ,int *,int ) ;
 int stub2 (TYPE_7__*,int ,int *,int *,int ) ;
 int svn_fs_base__str_to_dbt (int *,char const*) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;

svn_error_t *
svn_fs_bdb__miscellaneous_set(svn_fs_t *fs,
                              const char *key_str,
                              const char *val,
                              trail_t *trail,
                              apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBT key, value;

  svn_fs_base__str_to_dbt(&key, key_str);
  if (val == ((void*)0))
    {
      svn_fs_base__trail_debug(trail, "miscellaneous", "del");
      return BDB_WRAP(fs, N_("deleting record from 'miscellaneous' table"),
                      bfd->miscellaneous->del(bfd->miscellaneous,
                                              trail->db_txn, &key, 0));
    }
  else
    {
      svn_fs_base__str_to_dbt(&value, val);
      svn_fs_base__trail_debug(trail, "miscellaneous", "add");
      return BDB_WRAP(fs, N_("storing miscellaneous record"),
                      bfd->miscellaneous->put(bfd->miscellaneous,
                                              trail->db_txn,
                                              &key, &value, 0));
    }
}
