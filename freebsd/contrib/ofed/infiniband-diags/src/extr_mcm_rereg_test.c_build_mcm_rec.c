
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int ibmad_gid_t ;


 int IB_MCR_COMPMASK_JOIN_STATE ;
 int IB_MCR_COMPMASK_MGID ;
 int IB_MCR_COMPMASK_PORT_GID ;
 int IB_SA_DATA_SIZE ;
 int IB_SA_MCM_JOIN_STATE_F ;
 int IB_SA_MCM_MGID_F ;
 int IB_SA_MCM_PORTGID_F ;
 int mad_set_array (int *,int ,int ,int ) ;
 int mad_set_field (int *,int ,int ,int) ;
 int memset (int *,int ,int ) ;

uint64_t build_mcm_rec(uint8_t * data, ibmad_gid_t mgid, ibmad_gid_t port_gid)
{
 memset(data, 0, IB_SA_DATA_SIZE);
 mad_set_array(data, 0, IB_SA_MCM_MGID_F, mgid);
 mad_set_array(data, 0, IB_SA_MCM_PORTGID_F, port_gid);
 mad_set_field(data, 0, IB_SA_MCM_JOIN_STATE_F, 1);

 return IB_MCR_COMPMASK_MGID | IB_MCR_COMPMASK_PORT_GID |
     IB_MCR_COMPMASK_JOIN_STATE;
}
