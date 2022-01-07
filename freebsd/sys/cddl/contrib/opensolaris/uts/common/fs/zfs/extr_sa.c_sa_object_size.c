
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_longlong_t ;
struct TYPE_3__ {scalar_t__ sa_bonus; } ;
typedef TYPE_1__ sa_handle_t ;
typedef int dmu_buf_t ;


 int dmu_object_size_from_db (int *,int *,int *) ;

void
sa_object_size(sa_handle_t *hdl, uint32_t *blksize, u_longlong_t *nblocks)
{
 dmu_object_size_from_db((dmu_buf_t *)hdl->sa_bonus,
     blksize, nblocks);
}
