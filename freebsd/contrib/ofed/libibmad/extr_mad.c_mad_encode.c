
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void uint8_t ;
struct TYPE_7__ {int id; int mod; } ;
struct TYPE_8__ {int method; int mgtclass; int rstatus; int dataoffs; int oui; int datasz; scalar_t__ mask; scalar_t__ mkey; TYPE_1__ attr; scalar_t__ trid; } ;
typedef TYPE_2__ ib_rpc_t ;
struct TYPE_9__ {scalar_t__ cckey; } ;
typedef TYPE_3__ ib_rpc_cc_t ;
struct TYPE_10__ {scalar_t__ cnt; int drdlid; int drslid; int p; } ;
typedef TYPE_4__ ib_dr_path_t ;


 int EINVAL ;
 int IBWARN (char*,...) ;
 int IB_CC_CCKEY_F ;
 int IB_CC_CLASS ;
 int IB_DRSMP_DIRECTION_F ;
 int IB_DRSMP_DRDLID_F ;
 int IB_DRSMP_DRSLID_F ;
 int IB_DRSMP_HOPCNT_F ;
 int IB_DRSMP_HOPPTR_F ;
 int IB_DRSMP_PATH_F ;
 int IB_DRSMP_RPATH_F ;
 int IB_DRSMP_STATUS_F ;
 int IB_MAD_ATTRID_F ;
 int IB_MAD_ATTRMOD_F ;
 int IB_MAD_BASEVER_F ;
 int IB_MAD_CLASSVER_F ;
 int IB_MAD_METHOD_F ;
 int IB_MAD_MGMTCLASS_F ;
 int IB_MAD_MKEY_F ;
 int IB_MAD_RESPONSE ;
 int IB_MAD_RESPONSE_F ;
 int IB_MAD_SIZE ;
 int IB_MAD_STATUS_F ;
 int IB_MAD_TRID_F ;
 int IB_SA_CLASS ;
 int IB_SA_COMPMASK_F ;
 int IB_SMI_DIRECT_CLASS ;
 scalar_t__ IB_SUBNET_PATH_HOPS_MAX ;
 int IB_VEND2_OUI_F ;
 int errno ;
 scalar_t__ mad_is_vendor_range2 (int) ;
 int mad_set_array (void*,int ,int ,int ) ;
 int mad_set_field (void*,int ,int ,int) ;
 int mad_set_field64 (void*,int ,int ,scalar_t__) ;
 scalar_t__ mad_trid () ;
 int memcpy (char*,void*,int ) ;

void *mad_encode(void *buf, ib_rpc_t * rpc, ib_dr_path_t * drpath, void *data)
{
 int is_resp = rpc->method & IB_MAD_RESPONSE;
 int mgtclass;


 mad_set_field(buf, 0, IB_MAD_METHOD_F, rpc->method);
 mad_set_field(buf, 0, IB_MAD_RESPONSE_F, is_resp ? 1 : 0);
 mgtclass = rpc->mgtclass & 0xff;
 if (mgtclass == IB_SA_CLASS || mgtclass == IB_CC_CLASS)
  mad_set_field(buf, 0, IB_MAD_CLASSVER_F, 2);
 else
  mad_set_field(buf, 0, IB_MAD_CLASSVER_F, 1);
 mad_set_field(buf, 0, IB_MAD_MGMTCLASS_F, rpc->mgtclass & 0xff);
 mad_set_field(buf, 0, IB_MAD_BASEVER_F, 1);


 if ((rpc->mgtclass & 0xff) == IB_SMI_DIRECT_CLASS) {
  if (!drpath) {
   IBWARN("encoding dr mad without drpath (null)");
   errno = EINVAL;
   return ((void*)0);
  }
  if (drpath->cnt >= IB_SUBNET_PATH_HOPS_MAX) {
   IBWARN("dr path with hop count %d", drpath->cnt);
   errno = EINVAL;
   return ((void*)0);
  }
  mad_set_field(buf, 0, IB_DRSMP_HOPCNT_F, drpath->cnt);
  mad_set_field(buf, 0, IB_DRSMP_HOPPTR_F,
         is_resp ? drpath->cnt + 1 : 0x0);
  mad_set_field(buf, 0, IB_DRSMP_STATUS_F, rpc->rstatus);
  mad_set_field(buf, 0, IB_DRSMP_DIRECTION_F, is_resp ? 1 : 0);
 } else
  mad_set_field(buf, 0, IB_MAD_STATUS_F, rpc->rstatus);


 if (!rpc->trid)
  rpc->trid = mad_trid();

 mad_set_field64(buf, 0, IB_MAD_TRID_F, rpc->trid);
 mad_set_field(buf, 0, IB_MAD_ATTRID_F, rpc->attr.id);
 mad_set_field(buf, 0, IB_MAD_ATTRMOD_F, rpc->attr.mod);


 mad_set_field64(buf, 0, IB_MAD_MKEY_F, rpc->mkey);

 if ((rpc->mgtclass & 0xff) == IB_SMI_DIRECT_CLASS) {

  mad_set_field(buf, 0, IB_DRSMP_DRDLID_F,
         drpath->drdlid ? drpath->drdlid : 0xffff);
  mad_set_field(buf, 0, IB_DRSMP_DRSLID_F,
         drpath->drslid ? drpath->drslid : 0xffff);


  if (is_resp)
   mad_set_array(buf, 0, IB_DRSMP_RPATH_F, drpath->p);
  else
   mad_set_array(buf, 0, IB_DRSMP_PATH_F, drpath->p);
 }

 if ((rpc->mgtclass & 0xff) == IB_SA_CLASS)
  mad_set_field64(buf, 0, IB_SA_COMPMASK_F, rpc->mask);

 if ((rpc->mgtclass & 0xff) == IB_CC_CLASS) {
  ib_rpc_cc_t *rpccc = (ib_rpc_cc_t *)rpc;
  mad_set_field64(buf, 0, IB_CC_CCKEY_F, rpccc->cckey);
 }

 if (data)
  memcpy((char *)buf + rpc->dataoffs, data, rpc->datasz);


 if (mad_is_vendor_range2(rpc->mgtclass & 0xff))
  mad_set_field(buf, 0, IB_VEND2_OUI_F, rpc->oui);

 return (uint8_t *) buf + IB_MAD_SIZE;
}
