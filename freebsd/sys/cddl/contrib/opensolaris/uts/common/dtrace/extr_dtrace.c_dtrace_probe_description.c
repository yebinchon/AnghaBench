
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int dtpd_name; int dtpd_func; int dtpd_mod; int dtpd_provider; int dtpd_id; } ;
typedef TYPE_2__ dtrace_probedesc_t ;
struct TYPE_9__ {int dtpr_name; int dtpr_func; int dtpr_mod; TYPE_1__* dtpr_provider; int dtpr_id; } ;
typedef TYPE_3__ dtrace_probe_t ;
struct TYPE_7__ {int dtpv_name; } ;


 scalar_t__ DTRACE_FUNCNAMELEN ;
 scalar_t__ DTRACE_MODNAMELEN ;
 scalar_t__ DTRACE_NAMELEN ;
 scalar_t__ DTRACE_PROVNAMELEN ;
 int bzero (TYPE_2__*,int) ;
 int strncpy (int ,int ,scalar_t__) ;

__attribute__((used)) static void
dtrace_probe_description(const dtrace_probe_t *prp, dtrace_probedesc_t *pdp)
{
 bzero(pdp, sizeof (dtrace_probedesc_t));
 pdp->dtpd_id = prp->dtpr_id;

 (void) strncpy(pdp->dtpd_provider,
     prp->dtpr_provider->dtpv_name, DTRACE_PROVNAMELEN - 1);

 (void) strncpy(pdp->dtpd_mod, prp->dtpr_mod, DTRACE_MODNAMELEN - 1);
 (void) strncpy(pdp->dtpd_func, prp->dtpr_func, DTRACE_FUNCNAMELEN - 1);
 (void) strncpy(pdp->dtpd_name, prp->dtpr_name, DTRACE_NAMELEN - 1);
}
