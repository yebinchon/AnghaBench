
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef void* u_int ;
struct pcap_tc {int TcInstance; int * PpiPacket; } ;
struct TYPE_13__ {int timeout; int device; scalar_t__ rfmon; } ;
struct TYPE_14__ {scalar_t__ snapshot; int dlt_count; int selectable_fd; int (* cleanup_op ) (TYPE_5__*) ;int get_airpcap_handle_op; int live_dump_ended_op; int live_dump_op; int setuserbuffer_op; int sendqueue_transmit_op; int oid_set_request_op; int oid_get_request_op; int getevent_op; int setmintocopy_op; int setmode_op; int setbuff_op; int stats_ex_op; int stats_op; int setnonblock_op; int getnonblock_op; int set_datalink_op; int * setdirection_op; int setfilter_op; int read_op; int errbuf; TYPE_4__ opt; int inject_op; void** dlt_list; void* linktype; struct pcap_tc* priv; } ;
typedef TYPE_5__ pcap_t ;
typedef int ULONG ;
struct TYPE_16__ {scalar_t__ (* InstanceOpenByName ) (int ,int *) ;scalar_t__ (* InstanceSetFeature ) (int ,int ,int) ;int (* StatusGetString ) (scalar_t__) ;} ;
struct TYPE_12__ {int PfhLength; int PfhType; } ;
struct TYPE_11__ {int PfhLength; int PfhType; } ;
struct TYPE_10__ {int PphLength; scalar_t__ PphVersion; scalar_t__ PphFlags; void* PphDlt; } ;
struct TYPE_15__ {TYPE_3__ Dot3FieldHeader; TYPE_2__ AggregationFieldHeader; TYPE_1__ PacketHeader; } ;
typedef scalar_t__ TC_STATUS ;
typedef TYPE_6__* PPPI_HEADER ;
typedef int PPI_HEADER ;
typedef int PPI_FIELD_AGGREGATION_EXTENSION ;
typedef int PPI_FIELD_802_3_EXTENSION ;


 void* DLT_EN10MB ;
 void* DLT_PPI ;
 scalar_t__ MAXIMUM_SNAPLEN ;
 int MAX_TC_PACKET_SIZE ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int PCAP_ERROR_RFMON_NOTSUP ;
 int PPI_FIELD_TYPE_802_3_EXTENSION ;
 int PPI_FIELD_TYPE_AGGREGATION_EXTENSION ;
 int TC_INST_FT_READ_TIMEOUT ;
 int TC_INST_FT_RX_STATUS ;
 int TC_INST_FT_TX_STATUS ;
 scalar_t__ TC_SUCCESS ;
 int TcCleanup (TYPE_5__*) ;
 int TcGetAirPcapHandle ;
 int TcGetNonBlock ;
 int TcGetReceiveWaitHandle ;
 int TcInject ;
 int TcLiveDump ;
 int TcLiveDumpEnded ;
 int TcOidGetRequest ;
 int TcOidSetRequest ;
 int TcRead ;
 int TcSendqueueTransmit ;
 int TcSetBuff ;
 int TcSetDatalink ;
 int TcSetFilter ;
 int TcSetMinToCopy ;
 int TcSetMode ;
 int TcSetNonBlock ;
 int TcSetUserBuffer ;
 int TcStats ;
 int TcStatsEx ;
 TYPE_7__ g_TcFunctions ;
 int * malloc (int) ;
 int pcap_snprintf (int ,int ,char*,...) ;
 scalar_t__ stub1 (int ,int *) ;
 int stub2 (scalar_t__) ;
 scalar_t__ stub3 (int ,int ,int) ;
 int stub4 (scalar_t__) ;
 scalar_t__ stub5 (int ,int ,int) ;
 scalar_t__ stub6 (int ,int ,int) ;
 int stub7 (scalar_t__) ;

__attribute__((used)) static int
TcActivate(pcap_t *p)
{
 struct pcap_tc *pt = p->priv;
 TC_STATUS status;
 ULONG timeout;
 PPPI_HEADER pPpiHeader;

 if (p->opt.rfmon)
 {




  return PCAP_ERROR_RFMON_NOTSUP;
 }

 pt->PpiPacket = malloc(sizeof(PPI_HEADER) + MAX_TC_PACKET_SIZE);

 if (pt->PpiPacket == ((void*)0))
 {
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE, "Error allocating memory");
  return PCAP_ERROR;
 }
 if (p->snapshot <= 0 || p->snapshot > MAXIMUM_SNAPLEN)
  p->snapshot = MAXIMUM_SNAPLEN;




 pPpiHeader = (PPPI_HEADER)pt->PpiPacket;
 pPpiHeader->PacketHeader.PphDlt = DLT_EN10MB;
 pPpiHeader->PacketHeader.PphLength = sizeof(PPI_HEADER);
 pPpiHeader->PacketHeader.PphFlags = 0;
 pPpiHeader->PacketHeader.PphVersion = 0;

 pPpiHeader->AggregationFieldHeader.PfhLength = sizeof(PPI_FIELD_AGGREGATION_EXTENSION);
 pPpiHeader->AggregationFieldHeader.PfhType = PPI_FIELD_TYPE_AGGREGATION_EXTENSION;

 pPpiHeader->Dot3FieldHeader.PfhLength = sizeof(PPI_FIELD_802_3_EXTENSION);
 pPpiHeader->Dot3FieldHeader.PfhType = PPI_FIELD_TYPE_802_3_EXTENSION;

 status = g_TcFunctions.InstanceOpenByName(p->opt.device, &pt->TcInstance);

 if (status != TC_SUCCESS)
 {

  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE, "Error opening TurboCap adapter: %s", g_TcFunctions.StatusGetString(status));
  return PCAP_ERROR;
 }

 p->linktype = DLT_EN10MB;
 p->dlt_list = (u_int *) malloc(sizeof(u_int) * 2);



 if (p->dlt_list != ((void*)0)) {
  p->dlt_list[0] = DLT_EN10MB;
  p->dlt_list[1] = DLT_PPI;
  p->dlt_count = 2;
 }
 status = g_TcFunctions.InstanceSetFeature(pt->TcInstance, TC_INST_FT_RX_STATUS, 1);

 if (status != TC_SUCCESS)
 {
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,"Error enabling reception on a TurboCap instance: %s", g_TcFunctions.StatusGetString(status));
  goto bad;
 }




 status = g_TcFunctions.InstanceSetFeature(pt->TcInstance, TC_INST_FT_TX_STATUS, 1);




 p->inject_op = TcInject;





 if (p->opt.timeout == 0)
 {
  timeout = 0xFFFFFFFF;
 }
 else
 if (p->opt.timeout < 0)
 {



  timeout = 10;
 }
 else
 {
  timeout = p->opt.timeout;
 }

 status = g_TcFunctions.InstanceSetFeature(pt->TcInstance, TC_INST_FT_READ_TIMEOUT, timeout);

 if (status != TC_SUCCESS)
 {
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,"Error setting the read timeout a TurboCap instance: %s", g_TcFunctions.StatusGetString(status));
  goto bad;
 }

 p->read_op = TcRead;
 p->setfilter_op = TcSetFilter;
 p->setdirection_op = ((void*)0);
 p->set_datalink_op = TcSetDatalink;
 p->getnonblock_op = TcGetNonBlock;
 p->setnonblock_op = TcSetNonBlock;
 p->stats_op = TcStats;
 p->selectable_fd = -1;


 p->cleanup_op = TcCleanup;

 return 0;
bad:
 TcCleanup(p);
 return PCAP_ERROR;
}
