
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delete_unrhdr (int *) ;
 int lapic_ipi_free (scalar_t__) ;
 int nmi_flush_l1d_sw ;
 scalar_t__ pirvec ;
 int smp_rendezvous (int *,int ,int *,int *) ;
 int vmx_disable ;
 int * vpid_unr ;

__attribute__((used)) static int
vmx_cleanup(void)
{

 if (pirvec >= 0)
  lapic_ipi_free(pirvec);

 if (vpid_unr != ((void*)0)) {
  delete_unrhdr(vpid_unr);
  vpid_unr = ((void*)0);
 }

 if (nmi_flush_l1d_sw == 1)
  nmi_flush_l1d_sw = 0;

 smp_rendezvous(((void*)0), vmx_disable, ((void*)0), ((void*)0));

 return (0);
}
