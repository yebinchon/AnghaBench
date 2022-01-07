
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ctl_be_block_lun {int (* getattr ) (struct ctl_be_block_lun*,char const*) ;} ;


 int UINT64_MAX ;
 int stub1 (struct ctl_be_block_lun*,char const*) ;

__attribute__((used)) static uint64_t
ctl_be_block_lun_attr(void *be_lun, const char *attrname)
{
 struct ctl_be_block_lun *lun = (struct ctl_be_block_lun *)be_lun;

 if (lun->getattr == ((void*)0))
  return (UINT64_MAX);
 return (lun->getattr(lun, attrname));
}
