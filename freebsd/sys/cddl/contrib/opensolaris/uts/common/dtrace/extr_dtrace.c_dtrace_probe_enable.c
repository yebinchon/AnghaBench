
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zoneid_t ;
typedef int uint32_t ;
typedef int uid_t ;
typedef int dtrace_probekey_t ;
typedef int dtrace_probedesc_t ;
struct TYPE_12__ {TYPE_2__* dten_vstate; } ;
typedef TYPE_4__ dtrace_enabling_t ;
struct TYPE_9__ {int dcr_cred; } ;
struct TYPE_11__ {TYPE_1__ dts_cred; } ;
struct TYPE_10__ {TYPE_3__* dtvs_state; } ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int dtrace_cred2priv (int ,int *,int *,int *) ;
 int * dtrace_ecb_create_cache ;
 int dtrace_ecb_create_enable (int *,TYPE_4__*) ;
 int dtrace_lock ;
 int dtrace_match (int *,int ,int ,int ,int (*) (int *,TYPE_4__*),TYPE_4__*) ;
 int dtrace_probekey (int *,int *) ;

__attribute__((used)) static int
dtrace_probe_enable(dtrace_probedesc_t *desc, dtrace_enabling_t *enab)
{
 dtrace_probekey_t pkey;
 uint32_t priv;
 uid_t uid;
 zoneid_t zoneid;

 ASSERT(MUTEX_HELD(&dtrace_lock));
 dtrace_ecb_create_cache = ((void*)0);

 if (desc == ((void*)0)) {




  (void) dtrace_ecb_create_enable(((void*)0), enab);
  return (0);
 }

 dtrace_probekey(desc, &pkey);
 dtrace_cred2priv(enab->dten_vstate->dtvs_state->dts_cred.dcr_cred,
     &priv, &uid, &zoneid);

 return (dtrace_match(&pkey, priv, uid, zoneid, dtrace_ecb_create_enable,
     enab));
}
