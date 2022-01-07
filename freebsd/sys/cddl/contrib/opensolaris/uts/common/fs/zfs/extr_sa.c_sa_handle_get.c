
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int sa_handle_type_t ;
typedef int sa_handle_t ;
typedef int objset_t ;
typedef int dmu_buf_t ;


 int dmu_bonus_hold (int *,int ,int *,int **) ;
 int sa_handle_get_from_db (int *,int *,void*,int ,int **) ;

int
sa_handle_get(objset_t *objset, uint64_t objid, void *userp,
    sa_handle_type_t hdl_type, sa_handle_t **handlepp)
{
 dmu_buf_t *db;
 int error;

 if (error = dmu_bonus_hold(objset, objid, ((void*)0), &db))
  return (error);

 return (sa_handle_get_from_db(objset, db, userp, hdl_type,
     handlepp));
}
