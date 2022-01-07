
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct sa_handle {int dummy; } ;
struct query_params {int service_id; int slid; int dlid; int hop_limit; int flow_label; int tclass; int reversible; int numb_path; int pkey; int sl; int qos_class; int pkt_life; int rate; int mtu; int dgid; int sgid; } ;
struct query_cmd {int dummy; } ;
typedef int pr ;
struct TYPE_4__ {int service_id; int slid; int dlid; int hop_flow_raw; int tclass; int num_path; int pkey; int qos_class_sl; int pkt_life; int rate; int mtu; int dgid; int sgid; } ;
typedef TYPE_1__ ib_path_rec_t ;
typedef int ib_net64_t ;


 int CHECK_AND_SET_GID (int ,int ,int ,int ) ;
 int CHECK_AND_SET_VAL (int,int,int,int,int ,int ) ;
 int CHECK_AND_SET_VAL_AND_SEL (int ,int ,int ,int ,int ) ;
 int CL_HTON16 (int ) ;
 int DGID ;
 int DLID ;
 int FLOWLABEL ;
 int HOPLIMIT ;
 int IB_PATH_REC_SL_MASK ;
 int IB_SA_ATTR_PATHRECORD ;
 int MTU ;
 int NUMBPATH ;
 int PKEY ;
 int PKTLIFETIME ;
 int PR ;
 int QOS_CLASS ;
 int RATE ;
 int REVERSIBLE ;
 int SELEC ;
 int SERVICEID ;
 int SGID ;
 int SL ;
 int SLID ;
 int TCLASS ;
 int cl_hton32 (int) ;
 int dump_path_record ;
 int get_and_dump_any_records (struct sa_handle*,int ,int ,int ,TYPE_1__*,int,int ,struct query_params*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int query_path_records(const struct query_cmd *q, struct sa_handle * h,
         struct query_params *p, int argc, char *argv[])
{
 ib_path_rec_t pr;
 ib_net64_t comp_mask = 0;
 uint32_t flow = 0;
 uint16_t qos_class = 0;
 uint8_t reversible = 0;

 memset(&pr, 0, sizeof(pr));
 CHECK_AND_SET_VAL(p->service_id, 64, 0, pr.service_id, PR, SERVICEID);
 CHECK_AND_SET_GID(p->sgid, pr.sgid, PR, SGID);
 CHECK_AND_SET_GID(p->dgid, pr.dgid, PR, DGID);
 CHECK_AND_SET_VAL(p->slid, 16, 0, pr.slid, PR, SLID);
 CHECK_AND_SET_VAL(p->dlid, 16, 0, pr.dlid, PR, DLID);
 CHECK_AND_SET_VAL(p->hop_limit, 32, -1, pr.hop_flow_raw, PR, HOPLIMIT);
 CHECK_AND_SET_VAL((p->flow_label << 8), 32, 0, flow, PR, FLOWLABEL);
 pr.hop_flow_raw =
  (pr.hop_flow_raw & cl_hton32(~0x0FFFFF00)) | flow;
 CHECK_AND_SET_VAL(p->tclass, 8, 0, pr.tclass, PR, TCLASS);
 CHECK_AND_SET_VAL(p->reversible, 8, -1, reversible, PR, REVERSIBLE);
 CHECK_AND_SET_VAL(p->numb_path, 8, -1, pr.num_path, PR, NUMBPATH);
 pr.num_path |= reversible << 7;
 CHECK_AND_SET_VAL(p->pkey, 16, 0, pr.pkey, PR, PKEY);
 CHECK_AND_SET_VAL(p->sl, 16, -1, pr.qos_class_sl, PR, SL);
 CHECK_AND_SET_VAL((p->qos_class << 4), 16, -1, qos_class, PR, QOS_CLASS);
 pr.qos_class_sl = (pr.qos_class_sl & CL_HTON16(IB_PATH_REC_SL_MASK)) |
     qos_class;
 CHECK_AND_SET_VAL_AND_SEL(p->mtu, pr.mtu, PR, MTU, SELEC);
 CHECK_AND_SET_VAL_AND_SEL(p->rate, pr.rate, PR, RATE, SELEC);
 CHECK_AND_SET_VAL_AND_SEL(p->pkt_life, pr.pkt_life, PR, PKTLIFETIME,
      SELEC);

 return get_and_dump_any_records(h, IB_SA_ATTR_PATHRECORD, 0, comp_mask,
     &pr, sizeof(pr), dump_path_record, p);
}
