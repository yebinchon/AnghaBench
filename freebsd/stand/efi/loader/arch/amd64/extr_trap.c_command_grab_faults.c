
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_OK ;
 int efi_redirect_exceptions () ;
 int printf (char*) ;

__attribute__((used)) static int
command_grab_faults(int argc, char *argv[])
{
 int res;

 res = efi_redirect_exceptions();
 if (!res)
  printf("failed\n");
 return (CMD_OK);
}
