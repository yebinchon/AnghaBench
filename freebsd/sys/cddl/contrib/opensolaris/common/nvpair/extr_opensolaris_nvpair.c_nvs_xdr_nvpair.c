
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct xdr_bytesrec {int xc_num_avail; } ;
struct TYPE_9__ {int nvs_op; int * nvs_private; } ;
typedef TYPE_1__ nvstream_t ;
struct TYPE_10__ {size_t nvp_size; } ;
typedef TYPE_2__ nvpair_t ;
typedef size_t int32_t ;
typedef int XDR ;


 int EFAULT ;
 int EINVAL ;


 size_t NVS_XDR_MAX_LEN (int ) ;
 int XDR_GET_BYTES_AVAIL ;
 int nvs_xdr_nvp_op (TYPE_1__*,TYPE_2__*) ;
 int nvs_xdr_nvp_size (TYPE_1__*,TYPE_2__*,size_t*) ;
 int xdr_control (int *,int ,struct xdr_bytesrec*) ;
 int xdr_int (int *,size_t*) ;

__attribute__((used)) static int
nvs_xdr_nvpair(nvstream_t *nvs, nvpair_t *nvp, size_t *size)
{
 XDR *xdr = nvs->nvs_private;
 int32_t encode_len, decode_len;

 switch (nvs->nvs_op) {
 case 128: {
  size_t nvsize;

  if (nvs_xdr_nvp_size(nvs, nvp, &nvsize) != 0)
   return (EFAULT);

  decode_len = nvp->nvp_size;
  encode_len = nvsize;
  if (!xdr_int(xdr, &encode_len) || !xdr_int(xdr, &decode_len))
   return (EFAULT);

  return (nvs_xdr_nvp_op(nvs, nvp));
 }
 case 129: {
  struct xdr_bytesrec bytesrec;


  if (!xdr_int(xdr, &encode_len) || !xdr_int(xdr, &decode_len))
   return (EFAULT);
  *size = decode_len;


  if (*size == 0)
   return (0);


  if (!xdr_control(xdr, XDR_GET_BYTES_AVAIL, &bytesrec))
   return (EFAULT);

  if (*size > NVS_XDR_MAX_LEN(bytesrec.xc_num_avail))
   return (EFAULT);
  break;
 }

 default:
  return (EINVAL);
 }
 return (0);
}
