
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {TYPE_2__* dev; } ;
typedef TYPE_3__ dev_info_t ;
struct TYPE_5__ {TYPE_1__* Media; } ;
struct TYPE_4__ {int BlockSize; int LastBlock; } ;



uint64_t
ldi_get_size(void *priv)
{
 dev_info_t *devinfo = priv;

 return (devinfo->dev->Media->BlockSize *
     (devinfo->dev->Media->LastBlock + 1));
}
