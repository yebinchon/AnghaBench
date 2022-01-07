
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xdrproc_t ;
typedef int u_long ;
struct TYPE_6__ {size_t valdat_len; int valdat_val; } ;
struct TYPE_5__ {size_t keydat_len; int keydat_val; } ;
struct TYPE_7__ {int stat; TYPE_2__ val; TYPE_1__ key; } ;
struct TYPE_8__ {TYPE_3__ val; } ;
struct ypresp_all {scalar_t__ more; TYPE_4__ ypresp_all_u; } ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;


 int YP_YPERR ;
 int bcopy (int ,char*,size_t) ;
 int bzero (struct ypresp_all*,int) ;
 int free (char*) ;
 scalar_t__ malloc (int ) ;
 int stub1 (int,char*,size_t,char*,size_t,int ) ;
 int xdr_free (int ,struct ypresp_all*) ;
 int xdr_ypresp_all (int *,struct ypresp_all*) ;
 int ypresp_allfn (int,char*,size_t,char*,size_t,int ) ;
 int ypresp_data ;

bool_t
xdr_ypresp_all_seq(XDR *xdrs, u_long *objp)
{
 struct ypresp_all out;
 u_long status;
 char *key, *val;
 int r;

 bzero(&out, sizeof out);
 while (1) {
  if (!xdr_ypresp_all(xdrs, &out)) {
   xdr_free((xdrproc_t)xdr_ypresp_all, &out);
   *objp = YP_YPERR;
   return (FALSE);
  }
  if (out.more == 0) {
   xdr_free((xdrproc_t)xdr_ypresp_all, &out);
   *objp = 129;
   return (TRUE);
  }
  status = out.ypresp_all_u.val.stat;
  switch (status) {
  case 128:
   key = (char *)malloc(out.ypresp_all_u.val.key.keydat_len + 1);
   if (key == ((void*)0)) {
    xdr_free((xdrproc_t)xdr_ypresp_all, &out);
    *objp = YP_YPERR;
    return (FALSE);
   }
   bcopy(out.ypresp_all_u.val.key.keydat_val, key,
    out.ypresp_all_u.val.key.keydat_len);
   key[out.ypresp_all_u.val.key.keydat_len] = '\0';
   val = (char *)malloc(out.ypresp_all_u.val.val.valdat_len + 1);
   if (val == ((void*)0)) {
    free(key);
    xdr_free((xdrproc_t)xdr_ypresp_all, &out);
    *objp = YP_YPERR;
    return (FALSE);
   }
   bcopy(out.ypresp_all_u.val.val.valdat_val, val,
    out.ypresp_all_u.val.val.valdat_len);
   val[out.ypresp_all_u.val.val.valdat_len] = '\0';
   xdr_free((xdrproc_t)xdr_ypresp_all, &out);

   r = (*ypresp_allfn)(status,
    key, out.ypresp_all_u.val.key.keydat_len,
    val, out.ypresp_all_u.val.val.valdat_len,
    ypresp_data);
   *objp = status;
   free(key);
   free(val);
   if (r)
    return (TRUE);
   break;
  case 129:
   xdr_free((xdrproc_t)xdr_ypresp_all, &out);
   *objp = 129;
   return (TRUE);
  default:
   xdr_free((xdrproc_t)xdr_ypresp_all, &out);
   *objp = status;
   return (TRUE);
  }
 }
}
