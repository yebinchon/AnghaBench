
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
struct TYPE_3__ {char const* dev_desc; } ;


 char const* unknown_string ;

const char *
device_get_desc(device_t dev)
{
 if (dev)
  return &(dev->dev_desc[0]);
 return (unknown_string);
}
