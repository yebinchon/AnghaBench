
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ length; int * data; } ;
typedef TYPE_1__ heim_idata ;


 int free (int *) ;

void
heim_ipc_free_data(heim_idata *data)
{
    if (data->data)
 free(data->data);
    data->data = ((void*)0);
    data->length = 0;
}
