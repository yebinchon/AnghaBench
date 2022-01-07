
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int efi_fd ;
 int efi_guid_tbl_compile () ;
 int open (char*,int ) ;

__attribute__((used)) static int
efi_open_dev(void)
{

 if (efi_fd == -2)
  efi_fd = open("/dev/efi", O_RDWR);
 if (efi_fd < 0)
  efi_fd = -1;
 else
  efi_guid_tbl_compile();
 return (efi_fd);
}
