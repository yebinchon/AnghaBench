
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_OK ;
 int efi_unredirect_exceptions () ;

__attribute__((used)) static int
command_ungrab_faults(int argc, char *argv[])
{

 efi_unredirect_exceptions();
 return (CMD_OK);
}
