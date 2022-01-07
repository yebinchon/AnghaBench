
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddrs {int ifa_name; } ;
typedef int ifconfig_handle_t ;


 int err (int,char*) ;
 scalar_t__ ifconfig_get_fib (int *,int ,int*) ;
 int printf (char*,int) ;

__attribute__((used)) static void
print_fib(ifconfig_handle_t *lifh, struct ifaddrs *ifa)
{
 int fib;

 if (ifconfig_get_fib(lifh, ifa->ifa_name, &fib) == 0) {
  printf("\tfib: %d\n", fib);
 } else {
  err(1, "Failed to get interface FIB");
 }
}
