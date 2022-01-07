
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_cm_device {int fd; } ;


 int close (int ) ;
 int free (struct ib_cm_device*) ;

void ib_cm_close_device(struct ib_cm_device *device)
{
 close(device->fd);
 free(device);
}
