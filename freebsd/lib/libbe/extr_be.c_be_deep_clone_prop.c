
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zprop_source_t ;
struct libbe_dccb {int props; int lbh; int zhp; } ;
typedef int source ;
typedef int pval ;


 int BE_MAXPATHLEN ;
 int ZFS_PROP_CANMOUNT ;
 int ZFS_PROP_MOUNTPOINT ;
 int ZPROP_CONT ;
 scalar_t__ ZPROP_SRC_LOCAL ;
 scalar_t__ ZPROP_SRC_RECEIVED ;
 char* be_mountpoint_augmented (int ,char*) ;
 int nvlist_add_string (int ,int ,char*) ;
 int zfs_prop_get (int ,int,char*,int,scalar_t__*,char*,int,int) ;
 scalar_t__ zfs_prop_readonly (int) ;
 int zfs_prop_to_name (int) ;

__attribute__((used)) static int
be_deep_clone_prop(int prop, void *cb)
{
 int err;
        struct libbe_dccb *dccb;
 zprop_source_t src;
 char pval[BE_MAXPATHLEN];
 char source[BE_MAXPATHLEN];
 char *val;

 dccb = cb;

 if (prop == ZFS_PROP_CANMOUNT)
  return (ZPROP_CONT);


 if (zfs_prop_readonly(prop))
  return (ZPROP_CONT);

 if ((err = zfs_prop_get(dccb->zhp, prop, (char *)&pval,
     sizeof(pval), &src, (char *)&source, sizeof(source), 0)))

  return (ZPROP_CONT);






 if (src != ZPROP_SRC_LOCAL && src != ZPROP_SRC_RECEIVED)
  return (ZPROP_CONT);


 val = pval;
 if (prop == ZFS_PROP_MOUNTPOINT)
  val = be_mountpoint_augmented(dccb->lbh, val);

 nvlist_add_string(dccb->props, zfs_prop_to_name(prop), val);

 return (ZPROP_CONT);
}
