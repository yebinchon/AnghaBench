
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct drsmp {int base_version; int class_version; int method; int tid; int attr_mod; scalar_t__ attr_id; int mgmt_class; } ;


 int IB_SMI_CLASS ;
 int drmad_tid ;
 int htonl (int) ;
 int htonll (int ) ;
 scalar_t__ htons (scalar_t__) ;
 int memset (struct drsmp*,int ,int) ;
 scalar_t__ umad_get_mad (void*) ;
 int umad_set_addr (void*,int,int ,int ,int ) ;

void smp_get_init(void *umad, int lid, int attr, int mod)
{
 struct drsmp *smp = (struct drsmp *)(umad_get_mad(umad));

 memset(smp, 0, sizeof(*smp));

 smp->base_version = 1;
 smp->mgmt_class = IB_SMI_CLASS;
 smp->class_version = 1;

 smp->method = 1;
 smp->attr_id = (uint16_t) htons((uint16_t) attr);
 smp->attr_mod = htonl(mod);
 smp->tid = htonll(drmad_tid++);

 umad_set_addr(umad, lid, 0, 0, 0);
}
