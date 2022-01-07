
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int db_holds; } ;
typedef TYPE_1__ dmu_buf_impl_t ;


 int zfs_refcount_count (int *) ;

uint64_t
dbuf_refcount(dmu_buf_impl_t *db)
{
 return (zfs_refcount_count(&db->db_holds));
}
