
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t altroot_len; } ;
typedef TYPE_1__ libbe_handle_t ;



char *
be_mountpoint_augmented(libbe_handle_t *lbh, char *mountpoint)
{

 if (lbh->altroot_len == 0)
  return (mountpoint);
 if (mountpoint == ((void*)0) || *mountpoint == '\0')
  return (mountpoint);

 if (mountpoint[lbh->altroot_len] == '\0') {
  *(mountpoint + 1) = '\0';
  return (mountpoint);
 } else
  return (mountpoint + lbh->altroot_len);
}
