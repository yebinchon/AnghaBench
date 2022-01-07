
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sa_bonus; } ;
typedef TYPE_1__ sa_handle_t ;
typedef int dmu_buf_t ;



dmu_buf_t *
sa_get_db(sa_handle_t *hdl)
{
 return ((dmu_buf_t *)hdl->sa_bonus);
}
