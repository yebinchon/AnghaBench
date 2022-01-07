
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * device_t ;
typedef TYPE_1__* devclass_t ;
struct TYPE_3__ {int ** dev_list; } ;


 int DEVCLASS_MAXUNIT ;

device_t
devclass_get_device(devclass_t dc, int unit)
{
 return (((unit < 0) || (unit >= DEVCLASS_MAXUNIT) || (dc == ((void*)0))) ?
     ((void*)0) : dc->dev_list[unit]);
}
