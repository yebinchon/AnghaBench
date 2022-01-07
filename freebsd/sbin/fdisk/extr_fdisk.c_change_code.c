
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_boot () ;
 scalar_t__ ok (char*) ;

__attribute__((used)) static void
change_code()
{
 if (ok("Do you want to change the boot code?"))
  init_boot();
}
