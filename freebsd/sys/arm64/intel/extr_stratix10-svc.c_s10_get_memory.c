
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmem_t ;
typedef int vmem_size_t ;
typedef int vmem_addr_t ;
struct s10_svc_softc {int * vmem; int dev; int (* callfn ) (int ,int ,int ,int ,int ,int ,int ,int ,struct arm_smccc_res*) ;} ;
struct arm_smccc_res {scalar_t__ a0; int a2; int a1; } ;


 int ENXIO ;
 int INTEL_SIP_SMC_FPGA_CONFIG_GET_MEM ;
 scalar_t__ INTEL_SIP_SMC_STATUS_OK ;
 int M_BESTFIT ;
 int M_WAITOK ;
 int PAGE_SIZE ;
 int device_printf (int ,char*,int ,int ) ;
 int stub1 (int ,int ,int ,int ,int ,int ,int ,int ,struct arm_smccc_res*) ;
 int vmem_add (int *,int ,int ,int ) ;
 int * vmem_create (char*,int ,int ,int ,int ,int) ;

__attribute__((used)) static int
s10_get_memory(struct s10_svc_softc *sc)
{
 struct arm_smccc_res res;
 vmem_addr_t addr;
 vmem_size_t size;
 vmem_t *vmem;

 sc->callfn(INTEL_SIP_SMC_FPGA_CONFIG_GET_MEM,
     0, 0, 0, 0, 0, 0, 0, &res);
 if (res.a0 != INTEL_SIP_SMC_STATUS_OK)
  return (ENXIO);

 vmem = vmem_create("stratix10 vmem", 0, 0, PAGE_SIZE,
     PAGE_SIZE, M_BESTFIT | M_WAITOK);
 if (vmem == ((void*)0))
  return (ENXIO);

 addr = res.a1;
 size = res.a2;

 device_printf(sc->dev, "Shared memory address 0x%lx size 0x%lx\n",
     addr, size);

 vmem_add(vmem, addr, size, 0);

 sc->vmem = vmem;

 return (0);
}
