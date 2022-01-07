
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
struct TYPE_3__ {int dev_desc; } ;


 int snprintf (int ,int,char*,char const*) ;

void
device_set_desc(device_t dev, const char *desc)
{
 snprintf(dev->dev_desc, sizeof(dev->dev_desc), "%s", desc);
}
