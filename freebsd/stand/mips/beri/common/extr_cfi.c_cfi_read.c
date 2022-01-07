
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CHERI_BOOTFS_BASE ;
 unsigned int CHERI_BOOTFS_LENGTH ;
 int memcpy (void*,void*,unsigned int) ;

int
cfi_read(void *buf, unsigned lba, unsigned nblk)
{

 if ((lba << 9) + (nblk << 9) > CHERI_BOOTFS_LENGTH)
  return (-1);
 memcpy(buf, (void *)(CHERI_BOOTFS_BASE + (lba << 9)), nblk << 9);
 return (0);
}
