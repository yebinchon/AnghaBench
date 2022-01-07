
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ihandle_t ;
typedef scalar_t__ cell_t ;


 int OF_call_method (char*,int,int,int,int *,scalar_t__*) ;
 int OF_close (int) ;
 int OF_open (char*) ;
 int PVR_CPU_MASK ;




 int ibm_arch_vec ;
 int mfpvr () ;
 scalar_t__ ppc64_hv () ;
 int printf (char*,...) ;

int
ppc64_cas(void)
{
 int rc;
 ihandle_t ihandle;
 cell_t err;


 switch (mfpvr() & PVR_CPU_MASK) {
  case 131:
  case 130:
  case 129:
  case 128:
   break;
  default:
   return (0);
 }


 if (ppc64_hv())
  return (0);

 ihandle = OF_open("/");
 if (ihandle == -1) {
  printf("cas: failed to open / node\n");
  return (-1);
 }

 if (rc = OF_call_method("ibm,client-architecture-support",
     ihandle, 1, 1, &ibm_arch_vec, &err))
  printf("cas: failed to call CAS method\n");
 else if (err) {
  printf("cas: error: 0x%08lX\n", err);
  rc = -1;
 }

 OF_close(ihandle);
 return (rc);
}
