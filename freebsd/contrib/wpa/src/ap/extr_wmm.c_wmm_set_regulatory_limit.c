
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_wmm_rule {int max_txop; int min_aifs; int min_cwmax; int min_cwmin; } ;
struct hostapd_wmm_ac_params {int admission_control_mandatory; int txop_limit; void* aifs; void* cwmax; void* cwmin; } ;


 void* MAX (void*,int ) ;
 int MIN (int ,int ) ;
 int WMM_AC_NUM ;

__attribute__((used)) static void
wmm_set_regulatory_limit(const struct hostapd_wmm_ac_params *wmm_conf,
    struct hostapd_wmm_ac_params *wmm,
    const struct hostapd_wmm_rule *wmm_reg)
{
 int ac;

 for (ac = 0; ac < WMM_AC_NUM; ac++) {
  wmm[ac].cwmin = MAX(wmm_conf[ac].cwmin, wmm_reg[ac].min_cwmin);
  wmm[ac].cwmax = MAX(wmm_conf[ac].cwmax, wmm_reg[ac].min_cwmax);
  wmm[ac].aifs = MAX(wmm_conf[ac].aifs, wmm_reg[ac].min_aifs);
  wmm[ac].txop_limit =
   MIN(wmm_conf[ac].txop_limit, wmm_reg[ac].max_txop);
  wmm[ac].admission_control_mandatory =
   wmm_conf[ac].admission_control_mandatory;
 }
}
