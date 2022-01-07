
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_drive {int device; } ;


 int strlcpy (int ,char const*,int) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static void
copy_device(struct gv_drive *d, const char *device)
{

 if (strncmp(device, "/dev/", 5) == 0)
  strlcpy(d->device, (device + 5), sizeof(d->device));
 else
  strlcpy(d->device, device, sizeof(d->device));
}
