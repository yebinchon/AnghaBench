
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ device_t ;


 int MBOX_WRITE (scalar_t__,int,int ) ;
 int devclass_find (char*) ;
 scalar_t__ devclass_get_device (int ,int ) ;

void
bcm_mbox_write(int channel, uint32_t data)
{
 device_t mbox;

        mbox = devclass_get_device(devclass_find("mbox"), 0);

        if (mbox)
                MBOX_WRITE(mbox, channel, data);
}
