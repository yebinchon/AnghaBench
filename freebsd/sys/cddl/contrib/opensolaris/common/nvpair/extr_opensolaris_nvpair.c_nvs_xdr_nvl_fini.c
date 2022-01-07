
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nvs_op; int * nvs_private; } ;
typedef TYPE_1__ nvstream_t ;
typedef int XDR ;


 int EFAULT ;
 scalar_t__ NVS_OP_ENCODE ;
 int xdr_int (int *,int*) ;

__attribute__((used)) static int
nvs_xdr_nvl_fini(nvstream_t *nvs)
{
 if (nvs->nvs_op == NVS_OP_ENCODE) {
  XDR *xdr = nvs->nvs_private;
  int zero = 0;

  if (!xdr_int(xdr, &zero) || !xdr_int(xdr, &zero))
   return (EFAULT);
 }

 return (0);
}
