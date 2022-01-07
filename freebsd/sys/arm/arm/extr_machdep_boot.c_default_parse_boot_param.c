
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct arm_boot_params {int dummy; } ;


 int fake_preload_metadata (struct arm_boot_params*,int *,int ) ;
 int freebsd_parse_boot_param (struct arm_boot_params*) ;
 int linux_parse_boot_param (struct arm_boot_params*) ;

vm_offset_t
default_parse_boot_param(struct arm_boot_params *abp)
{
 vm_offset_t lastaddr;
 lastaddr = fake_preload_metadata(abp, ((void*)0), 0);

 return lastaddr;
}
