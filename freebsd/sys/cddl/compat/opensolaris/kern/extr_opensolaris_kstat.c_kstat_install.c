
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_5__ {scalar_t__ ks_ndata; int ks_sysctl_root; int ks_sysctl_ctx; TYPE_2__* ks_data; } ;
typedef TYPE_1__ kstat_t ;
struct TYPE_6__ {scalar_t__ data_type; int desc; int name; } ;
typedef TYPE_2__ kstat_named_t ;


 int CTLFLAG_RD ;
 int CTLTYPE_U64 ;
 int KASSERT (int,char*) ;
 scalar_t__ KSTAT_DATA_UINT64 ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (int *,int ,int ,int ,int,TYPE_2__*,int,int ,char*,int ) ;
 int SYSCTL_CHILDREN (int ) ;
 int kstat_sysctl ;

void
kstat_install(kstat_t *ksp)
{
 kstat_named_t *ksent;
 u_int i;

 ksent = ksp->ks_data;
 for (i = 0; i < ksp->ks_ndata; i++, ksent++) {
  KASSERT(ksent->data_type == KSTAT_DATA_UINT64,
      ("data_type=%d", ksent->data_type));
  SYSCTL_ADD_PROC(&ksp->ks_sysctl_ctx,
      SYSCTL_CHILDREN(ksp->ks_sysctl_root), OID_AUTO, ksent->name,
      CTLTYPE_U64 | CTLFLAG_RD, ksent, sizeof(*ksent),
      kstat_sysctl, "QU", ksent->desc);
 }
}
