
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CHERI_BOOTFS_LENGTH ;

uint64_t
cfi_get_mediasize(void)
{

 return (CHERI_BOOTFS_LENGTH);
}
