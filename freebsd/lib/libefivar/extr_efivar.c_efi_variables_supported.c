
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int efi_open_dev () ;

int
efi_variables_supported(void)
{

 return efi_open_dev() != -1;
}
