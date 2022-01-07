
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_string_t ;
struct TYPE_4__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_id_t ;
struct TYPE_5__ {int txn_id; int copy_id; int node_id; } ;
typedef TYPE_2__ id_private_t ;
typedef int apr_pool_t ;


 int * svn_string_createf (int *,char*,int ,int ,int ) ;

svn_string_t *
svn_fs_base__id_unparse(const svn_fs_id_t *id,
                        apr_pool_t *pool)
{
  id_private_t *pvt = id->fsap_data;

  return svn_string_createf(pool, "%s.%s.%s",
                            pvt->node_id, pvt->copy_id, pvt->txn_id);
}
