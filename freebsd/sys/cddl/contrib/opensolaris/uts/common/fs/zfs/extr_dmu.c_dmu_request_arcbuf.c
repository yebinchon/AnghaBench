
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int dmu_buf_t ;
struct TYPE_4__ {TYPE_1__* db_objset; } ;
typedef TYPE_2__ dmu_buf_impl_t ;
typedef int arc_buf_t ;
struct TYPE_3__ {int os_spa; } ;


 int B_FALSE ;
 int * arc_loan_buf (int ,int ,int) ;

arc_buf_t *
dmu_request_arcbuf(dmu_buf_t *handle, int size)
{
 dmu_buf_impl_t *db = (dmu_buf_impl_t *)handle;

 return (arc_loan_buf(db->db_objset->os_spa, B_FALSE, size));
}
