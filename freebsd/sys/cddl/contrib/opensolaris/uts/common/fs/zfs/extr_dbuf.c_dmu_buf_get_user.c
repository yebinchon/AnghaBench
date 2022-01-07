
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dmu_buf_t ;
struct TYPE_3__ {void* db_user; } ;
typedef TYPE_1__ dmu_buf_impl_t ;


 int DBVU_NOT_EVICTING ;
 int dbuf_verify_user (TYPE_1__*,int ) ;

void *
dmu_buf_get_user(dmu_buf_t *db_fake)
{
 dmu_buf_impl_t *db = (dmu_buf_impl_t *)db_fake;

 dbuf_verify_user(db, DBVU_NOT_EVICTING);
 return (db->db_user);
}
