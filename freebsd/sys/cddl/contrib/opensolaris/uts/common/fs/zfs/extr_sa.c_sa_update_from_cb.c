
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int sa_lock; } ;
typedef TYPE_1__ sa_handle_t ;
typedef int sa_data_locator_t ;
struct TYPE_7__ {int sa_length; int * sa_data_func; void* sa_data; int sa_attr; } ;
typedef TYPE_2__ sa_bulk_attr_t ;
typedef int sa_attr_type_t ;
typedef int dmu_tx_t ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int sa_bulk_update_impl (TYPE_1__*,TYPE_2__*,int,int *) ;

int
sa_update_from_cb(sa_handle_t *hdl, sa_attr_type_t attr,
    uint32_t buflen, sa_data_locator_t *locator, void *userdata, dmu_tx_t *tx)
{
 int error;
 sa_bulk_attr_t bulk;

 bulk.sa_attr = attr;
 bulk.sa_data = userdata;
 bulk.sa_data_func = locator;
 bulk.sa_length = buflen;

 mutex_enter(&hdl->sa_lock);
 error = sa_bulk_update_impl(hdl, &bulk, 1, tx);
 mutex_exit(&hdl->sa_lock);
 return (error);
}
