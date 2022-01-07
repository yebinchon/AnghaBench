
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct s10_svc_softc {int (* callfn ) (scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int ,int ,struct arm_smccc_res*) ;} ;
struct s10_svc_msg {int command; int payload_length; int payload; scalar_t__ flags; } ;
struct arm_smccc_res {int dummy; } ;
typedef scalar_t__ register_t ;
typedef int device_t ;





 scalar_t__ INTEL_SIP_SMC_FPGA_CONFIG_START ;
 scalar_t__ INTEL_SIP_SMC_FPGA_CONFIG_WRITE ;
 struct s10_svc_softc* device_get_softc (int ) ;
 int s10_data_claim (struct s10_svc_softc*) ;
 int stub1 (scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int ,int ,struct arm_smccc_res*) ;

int
s10_svc_send(device_t dev, struct s10_svc_msg *msg)
{
 struct s10_svc_softc *sc;
 struct arm_smccc_res res;
 register_t a0, a1, a2;
 int ret;

 sc = device_get_softc(dev);

 a0 = 0;
 a1 = 0;
 a2 = 0;

 switch (msg->command) {
 case 130:
  a0 = INTEL_SIP_SMC_FPGA_CONFIG_START;
  a1 = msg->flags;
  break;
 case 128:
  a0 = INTEL_SIP_SMC_FPGA_CONFIG_WRITE;
  a1 = (uint64_t)msg->payload;
  a2 = (uint64_t)msg->payload_length;
  break;
 case 129:
  ret = s10_data_claim(sc);
  return (ret);
 default:
  return (-1);
 }

 ret = sc->callfn(a0, a1, a2, 0, 0, 0, 0, 0, &res);

 return (ret);
}
