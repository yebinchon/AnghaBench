
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 scalar_t__ CPU_PART (int ) ;
 scalar_t__ CPU_PART_THUNDERX ;
 scalar_t__ CPU_PART_THUNDERX_81XX ;
 int CPU_REV (int ) ;
 int CPU_VAR (int ) ;
 int PCPU_SET (int ,int) ;
 int bcast_tlbi_workaround ;
 int get_midr () ;

__attribute__((used)) static void
install_thunderx_bcast_tlbi_workaround(void)
{
 u_int midr;

 midr = get_midr();
 if (CPU_PART(midr) == CPU_PART_THUNDERX_81XX)
  PCPU_SET(bcast_tlbi_workaround, 1);
 else if (CPU_PART(midr) == CPU_PART_THUNDERX) {
  if (CPU_VAR(midr) == 0) {

   PCPU_SET(bcast_tlbi_workaround, 1);
  } else if (CPU_VAR(midr) == 1 && CPU_REV(midr) <= 1) {

   PCPU_SET(bcast_tlbi_workaround, 1);
  }
 }
}
