
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
struct TYPE_12__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_13__ {TYPE_7__* strings; } ;
typedef TYPE_3__ base_fs_data_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_14__ {int (* put ) (TYPE_7__*,int ,int ,int ,int ) ;} ;
typedef int DBT ;


 int * BDB_WRAP (TYPE_2__*,int ,int ) ;
 int N_ (char*) ;
 int SVN_ERR (int ) ;
 int get_key_and_bump (TYPE_2__*,char const**,TYPE_1__*,int *) ;
 int stub1 (TYPE_7__*,int ,int ,int ,int ) ;
 int svn_fs_base__set_dbt (int *,char const*,int ) ;
 int svn_fs_base__str_to_dbt (int *,char const*) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;

svn_error_t *
svn_fs_bdb__string_append(svn_fs_t *fs,
                          const char **key,
                          apr_size_t len,
                          const char *buf,
                          trail_t *trail,
                          apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBT query, result;



  if (*key == ((void*)0))
    {
      SVN_ERR(get_key_and_bump(fs, key, trail, pool));
    }


  svn_fs_base__trail_debug(trail, "strings", "put");
  return BDB_WRAP(fs, N_("appending string"),
                  bfd->strings->put
                  (bfd->strings, trail->db_txn,
                   svn_fs_base__str_to_dbt(&query, *key),
                   svn_fs_base__set_dbt(&result, buf, len),
                   0));
}
