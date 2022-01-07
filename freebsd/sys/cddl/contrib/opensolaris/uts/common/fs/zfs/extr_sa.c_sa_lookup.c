
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int sa_lock; } ;
typedef TYPE_1__ sa_handle_t ;
struct TYPE_8__ {int * sa_data_func; int sa_length; void* sa_data; int sa_attr; } ;
typedef TYPE_2__ sa_bulk_attr_t ;
typedef int sa_attr_type_t ;


 int ASSERT (TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int sa_lookup_impl (TYPE_1__*,TYPE_2__*,int) ;

int
sa_lookup(sa_handle_t *hdl, sa_attr_type_t attr, void *buf, uint32_t buflen)
{
 int error;
 sa_bulk_attr_t bulk;

 bulk.sa_attr = attr;
 bulk.sa_data = buf;
 bulk.sa_length = buflen;
 bulk.sa_data_func = ((void*)0);

 ASSERT(hdl);
 mutex_enter(&hdl->sa_lock);
 error = sa_lookup_impl(hdl, &bulk, 1);
 mutex_exit(&hdl->sa_lock);
 return (error);
}
