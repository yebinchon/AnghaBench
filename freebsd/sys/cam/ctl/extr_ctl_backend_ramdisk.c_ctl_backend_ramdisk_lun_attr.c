
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int blocksize; } ;
struct ctl_be_ramdisk_lun {int cap_bytes; int cap_used; int page_lock; TYPE_1__ cbe_lun; } ;


 int UINT64_MAX ;
 scalar_t__ strcmp (char const*,char*) ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;

__attribute__((used)) static uint64_t
ctl_backend_ramdisk_lun_attr(void *arg, const char *attrname)
{
 struct ctl_be_ramdisk_lun *be_lun = arg;
 uint64_t val;

 val = UINT64_MAX;
 if (be_lun->cap_bytes == 0)
  return (val);
 sx_slock(&be_lun->page_lock);
 if (strcmp(attrname, "blocksused") == 0) {
  val = be_lun->cap_used / be_lun->cbe_lun.blocksize;
 } else if (strcmp(attrname, "blocksavail") == 0) {
  val = (be_lun->cap_bytes - be_lun->cap_used) /
      be_lun->cbe_lun.blocksize;
 }
 sx_sunlock(&be_lun->page_lock);
 return (val);
}
