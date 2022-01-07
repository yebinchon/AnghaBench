
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int arch_kexec_kseg_get; int arch_loadaddr; int arch_autoload; int arch_readin; int arch_copyout; int arch_copyin; int arch_getdev; } ;


 TYPE_1__ archsw ;
 char* bootprog_info ;
 int cons_probe () ;
 void* host_getmem (size_t const) ;
 int interact () ;
 int kboot_autoload ;
 int kboot_copyin ;
 int kboot_copyout ;
 int kboot_getdev ;
 int kboot_kseg_get ;
 int kboot_loadaddr ;
 int kboot_readin ;
 int printf (char*,char const*) ;
 int setenv (char*,char const*,int) ;
 int setheap (void*,void*) ;

int
main(int argc, const char **argv)
{
 void *heapbase;
 const size_t heapsize = 15*1024*1024;
 const char *bootdev;




 heapbase = host_getmem(heapsize);
 setheap(heapbase, heapbase + heapsize);




 cons_probe();


 if (argc > 1)
  bootdev = argv[1];
 else
  bootdev = "";

 printf("Boot device: %s\n", bootdev);

 archsw.arch_getdev = kboot_getdev;
 archsw.arch_copyin = kboot_copyin;
 archsw.arch_copyout = kboot_copyout;
 archsw.arch_readin = kboot_readin;
 archsw.arch_autoload = kboot_autoload;
 archsw.arch_loadaddr = kboot_loadaddr;
 archsw.arch_kexec_kseg_get = kboot_kseg_get;

 printf("\n%s", bootprog_info);

 setenv("currdev", bootdev, 1);
 setenv("loaddev", bootdev, 1);
 setenv("LINES", "24", 1);
 setenv("usefdt", "1", 1);

 interact();

 return (0);
}
