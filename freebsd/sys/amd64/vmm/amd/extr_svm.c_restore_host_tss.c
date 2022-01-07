
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct system_segment_descriptor {int sd_type; } ;


 int GPROC0_SEL ;
 int GSEL (int ,int ) ;
 struct system_segment_descriptor* PCPU_GET (int ) ;
 int SDT_SYSTSS ;
 int SEL_KPL ;
 int ltr (int ) ;
 int tss ;

__attribute__((used)) static __inline void
restore_host_tss(void)
{
 struct system_segment_descriptor *tss_sd;
 tss_sd = PCPU_GET(tss);
 tss_sd->sd_type = SDT_SYSTSS;
 ltr(GSEL(GPROC0_SEL, SEL_KPL));
}
