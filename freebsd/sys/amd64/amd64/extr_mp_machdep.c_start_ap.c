
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DELAY (int) ;
 int boot_address ;
 int ipi_startup (int,int) ;
 int mp_naps ;

__attribute__((used)) static int
start_ap(int apic_id)
{
 int vector, ms;
 int cpus;


 vector = (boot_address >> 12) & 0xff;


 cpus = mp_naps;

 ipi_startup(apic_id, vector);


 for (ms = 0; ms < 5000; ms++) {
  if (mp_naps > cpus)
   return 1;
  DELAY(1000);
 }
 return 0;
}
