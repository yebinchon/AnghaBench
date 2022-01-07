
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dtpa_args; int dtpa_name; int dtpa_func; int dtpa_mod; int dtpa_provider; } ;
struct TYPE_7__ {char* dthpv_provname; TYPE_1__ dthpv_pattr; } ;
typedef TYPE_2__ dtrace_helper_provdesc_t ;
struct TYPE_8__ {int dofpv_name; int dofpv_argsattr; int dofpv_nameattr; int dofpv_funcattr; int dofpv_modattr; int dofpv_provattr; } ;
typedef TYPE_3__ dof_provider_t ;


 int dtrace_dofattr2attr (int *,int ) ;

__attribute__((used)) static void
dtrace_dofprov2hprov(dtrace_helper_provdesc_t *hprov,
    const dof_provider_t *dofprov, char *strtab)
{
 hprov->dthpv_provname = strtab + dofprov->dofpv_name;
 dtrace_dofattr2attr(&hprov->dthpv_pattr.dtpa_provider,
     dofprov->dofpv_provattr);
 dtrace_dofattr2attr(&hprov->dthpv_pattr.dtpa_mod,
     dofprov->dofpv_modattr);
 dtrace_dofattr2attr(&hprov->dthpv_pattr.dtpa_func,
     dofprov->dofpv_funcattr);
 dtrace_dofattr2attr(&hprov->dthpv_pattr.dtpa_name,
     dofprov->dofpv_nameattr);
 dtrace_dofattr2attr(&hprov->dthpv_pattr.dtpa_args,
     dofprov->dofpv_argsattr);
}
