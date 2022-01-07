
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* fsap_data; int * vtable; } ;
typedef TYPE_1__ svn_fs_id_t ;
struct TYPE_6__ {void* txn_id; void* copy_id; void* node_id; } ;
typedef TYPE_2__ id_private_t ;
typedef int apr_pool_t ;


 void* apr_palloc (int *,int) ;
 void* apr_pstrdup (int *,void*) ;
 int id_vtable ;

svn_fs_id_t *
svn_fs_base__id_copy(const svn_fs_id_t *id, apr_pool_t *pool)
{
  svn_fs_id_t *new_id = apr_palloc(pool, sizeof(*new_id));
  id_private_t *new_pvt = apr_palloc(pool, sizeof(*new_pvt));
  id_private_t *pvt = id->fsap_data;

  new_pvt->node_id = apr_pstrdup(pool, pvt->node_id);
  new_pvt->copy_id = apr_pstrdup(pool, pvt->copy_id);
  new_pvt->txn_id = apr_pstrdup(pool, pvt->txn_id);
  new_id->vtable = &id_vtable;
  new_id->fsap_data = new_pvt;
  return new_id;
}
