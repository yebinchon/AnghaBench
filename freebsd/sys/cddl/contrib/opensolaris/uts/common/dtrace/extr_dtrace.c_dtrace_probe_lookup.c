
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dtpv_name; } ;
typedef TYPE_1__ dtrace_provider_t ;
typedef scalar_t__ dtrace_provider_id_t ;
struct TYPE_5__ {char* dtpk_mod; char* dtpk_func; char* dtpk_name; int dtpk_id; int * dtpk_nmatch; int * dtpk_fmatch; int * dtpk_mmatch; int * dtpk_pmatch; int dtpk_prov; } ;
typedef TYPE_2__ dtrace_probekey_t ;
typedef int dtrace_id_t ;


 int ASSERT (int) ;
 int DTRACE_IDNONE ;
 int DTRACE_PRIV_ALL ;
 int dtrace_lock ;
 int dtrace_match (TYPE_2__*,int ,int ,int ,int ,int *) ;
 int dtrace_match_nul ;
 int dtrace_match_string ;
 int dtrace_probe_lookup_match ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

dtrace_id_t
dtrace_probe_lookup(dtrace_provider_id_t prid, char *mod,
    char *func, char *name)
{
 dtrace_probekey_t pkey;
 dtrace_id_t id;
 int match;

 pkey.dtpk_prov = ((dtrace_provider_t *)prid)->dtpv_name;
 pkey.dtpk_pmatch = &dtrace_match_string;
 pkey.dtpk_mod = mod;
 pkey.dtpk_mmatch = mod ? &dtrace_match_string : &dtrace_match_nul;
 pkey.dtpk_func = func;
 pkey.dtpk_fmatch = func ? &dtrace_match_string : &dtrace_match_nul;
 pkey.dtpk_name = name;
 pkey.dtpk_nmatch = name ? &dtrace_match_string : &dtrace_match_nul;
 pkey.dtpk_id = DTRACE_IDNONE;

 mutex_enter(&dtrace_lock);
 match = dtrace_match(&pkey, DTRACE_PRIV_ALL, 0, 0,
     dtrace_probe_lookup_match, &id);
 mutex_exit(&dtrace_lock);

 ASSERT(match == 1 || match == 0);
 return (match ? id : 0);
}
