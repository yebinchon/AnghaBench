
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int nvs_op; scalar_t__ nvs_recursion; int * nvs_priv; } ;
typedef TYPE_1__ nvstream_t ;
struct TYPE_10__ {int nvh_encoding; int nvh_endian; int nvh_reserved2; int nvh_reserved1; } ;
typedef TYPE_2__ nvs_header_t ;
typedef int nvpriv_t ;
struct TYPE_11__ {scalar_t__ nvl_priv; } ;
typedef TYPE_3__ nvlist_t ;


 int EINVAL ;
 int ENOTSUP ;





 int nvs_native (TYPE_1__*,TYPE_3__*,char*,size_t*) ;
 int nvs_xdr (TYPE_1__*,TYPE_3__*,char*,size_t*) ;

__attribute__((used)) static int
nvlist_common(nvlist_t *nvl, char *buf, size_t *buflen, int encoding,
    int nvs_op)
{
 int err = 0;
 nvstream_t nvs;
 int nvl_endian;

 int host_endian = 1;



 nvs_header_t *nvh = (void *)buf;

 if (buflen == ((void*)0) || nvl == ((void*)0) ||
     (nvs.nvs_priv = (nvpriv_t *)(uintptr_t)nvl->nvl_priv) == ((void*)0))
  return (EINVAL);

 nvs.nvs_op = nvs_op;
 nvs.nvs_recursion = 0;






 switch (nvs_op) {
 case 131:
  if (buf == ((void*)0) || *buflen < sizeof (nvs_header_t))
   return (EINVAL);

  nvh->nvh_encoding = encoding;
  nvh->nvh_endian = nvl_endian = host_endian;
  nvh->nvh_reserved1 = 0;
  nvh->nvh_reserved2 = 0;
  break;

 case 132:
  if (buf == ((void*)0) || *buflen < sizeof (nvs_header_t))
   return (EINVAL);


  encoding = nvh->nvh_encoding;
  nvl_endian = nvh->nvh_endian;
  break;

 case 130:
  nvl_endian = host_endian;




  *buflen = sizeof (nvs_header_t);
  break;

 default:
  return (ENOTSUP);
 }




 switch (encoding) {
 case 129:




  if (nvl_endian != host_endian)
   return (ENOTSUP);
  err = nvs_native(&nvs, nvl, buf, buflen);
  break;
 case 128:
  err = nvs_xdr(&nvs, nvl, buf, buflen);
  break;
 default:
  err = ENOTSUP;
  break;
 }

 return (err);
}
