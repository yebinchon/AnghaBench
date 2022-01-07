
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nvs_op; int * nvs_private; } ;
typedef TYPE_1__ nvstream_t ;
struct TYPE_6__ {int nvl_nvflag; int nvl_version; } ;
typedef TYPE_2__ nvlist_t ;
typedef int XDR ;


 int EFAULT ;
 int EINVAL ;



 int xdr_int (int *,int *) ;
 int xdr_u_int (int *,int *) ;

__attribute__((used)) static int
nvs_xdr_nvlist(nvstream_t *nvs, nvlist_t *nvl, size_t *size)
{
 switch (nvs->nvs_op) {
 case 129:
 case 130: {
  XDR *xdr = nvs->nvs_private;

  if (!xdr_int(xdr, &nvl->nvl_version) ||
      !xdr_u_int(xdr, &nvl->nvl_nvflag))
   return (EFAULT);
  break;
 }
 case 128: {




  *size += 2 * 4 + 8;
  break;
 }
 default:
  return (EINVAL);
 }
 return (0);
}
