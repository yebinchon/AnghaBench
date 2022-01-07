
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int window; int key; int name; } ;
struct authdes_cred {int adc_namekind; int adc_nickname; TYPE_1__ adc_fullname; } ;
typedef int enum_t ;
typedef enum authdes_namekind { ____Placeholder_authdes_namekind } authdes_namekind ;
typedef int des_block ;
typedef int caddr_t ;
typedef int bool_t ;
typedef int XDR ;




 int ATTEMPT (int ) ;
 int FALSE ;
 int MAXNETNAMELEN ;
 int TRUE ;
 int xdr_enum (int *,int *) ;
 int xdr_opaque (int *,int ,int) ;
 int xdr_string (int *,int *,int ) ;

bool_t
xdr_authdes_cred(XDR *xdrs, struct authdes_cred *cred)
{
 enum authdes_namekind *padc_namekind = &cred->adc_namekind;



 ATTEMPT(xdr_enum(xdrs, (enum_t *) padc_namekind));
 switch (cred->adc_namekind) {
 case 129:
  ATTEMPT(xdr_string(xdrs, &cred->adc_fullname.name,
      MAXNETNAMELEN));
  ATTEMPT(xdr_opaque(xdrs, (caddr_t)&cred->adc_fullname.key,
      sizeof(des_block)));
  ATTEMPT(xdr_opaque(xdrs, (caddr_t)&cred->adc_fullname.window,
      sizeof(cred->adc_fullname.window)));
  return (TRUE);
 case 128:
  ATTEMPT(xdr_opaque(xdrs, (caddr_t)&cred->adc_nickname,
      sizeof(cred->adc_nickname)));
  return (TRUE);
 default:
  return (FALSE);
 }
}
