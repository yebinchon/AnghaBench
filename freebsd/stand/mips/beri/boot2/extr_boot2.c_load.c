
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;



 int boot_fromdram () ;
 int boot_fromfs () ;
 TYPE_1__ dsk ;

__attribute__((used)) static void
load(void)
{

 switch (dsk.type) {
 case 128:
  boot_fromdram();
  break;

 default:
  boot_fromfs();
  break;
 }
}
