
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KDB_WHY_BOOTFLAGS ;
 int RB_KDB ;
 int boothowto ;
 int kdb_enter (int ,char*) ;
 int kdb_init () ;

__attribute__((used)) static void
arm_kdb_init(void)
{

 kdb_init();




}
