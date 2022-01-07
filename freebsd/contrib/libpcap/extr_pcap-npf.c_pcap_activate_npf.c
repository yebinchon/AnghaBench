
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef void* u_int ;
struct pcap_win {int rfmon_selfstart; TYPE_6__* adapter; int dag_fcs_bits; } ;
struct TYPE_15__ {scalar_t__ buffer_size; scalar_t__ nocapture_local; int timeout; int device; scalar_t__ immediate; scalar_t__ promisc; scalar_t__ rfmon; } ;
struct TYPE_16__ {int dlt_count; scalar_t__ snapshot; int bufsize; int handle; int (* cleanup_op ) (TYPE_2__*) ;int get_airpcap_handle_op; int live_dump_ended_op; int live_dump_op; int setuserbuffer_op; int sendqueue_transmit_op; int oid_set_request_op; int oid_get_request_op; int getevent_op; int setmintocopy_op; int setmode_op; int setbuff_op; int stats_ex_op; int stats_op; int setnonblock_op; int getnonblock_op; int * set_datalink_op; int inject_op; int * setdirection_op; int setfilter_op; int read_op; int errbuf; TYPE_1__ opt; int * buffer; void* linktype; void** dlt_list; struct pcap_win* priv; } ;
typedef TYPE_2__ pcap_t ;
typedef int keyname ;
struct TYPE_18__ {int Flags; int hFile; int DagFcsLen; } ;
struct TYPE_17__ {int LinkType; } ;
typedef TYPE_3__ NetType ;
typedef int LONG ;
typedef int HKEY ;
typedef int DWORD ;


 void* DLT_ARCNET ;
 void* DLT_ATM_RFC1483 ;
 void* DLT_CHDLC ;
 void* DLT_DOCSIS ;
 void* DLT_EN10MB ;
 void* DLT_FDDI ;
 void* DLT_IEEE802 ;
 void* DLT_IEEE802_11 ;
 void* DLT_IEEE802_11_RADIO ;
 void* DLT_NULL ;
 void* DLT_PPI ;
 void* DLT_PPP_SERIAL ;
 int ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int GetLastError () ;
 int HKEY_LOCAL_MACHINE ;
 int INFO_FLAG_DAG_CARD ;
 int KEY_READ ;
 scalar_t__ MAXIMUM_SNAPLEN ;
 int NDIS_PACKET_TYPE_ALL_LOCAL ;
 int NDIS_PACKET_TYPE_BROADCAST ;
 int NDIS_PACKET_TYPE_DIRECTED ;
 int NDIS_PACKET_TYPE_MULTICAST ;
 int NDIS_PACKET_TYPE_PROMISCUOUS ;
 int NPF_DISABLE_LOOPBACK ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int PCAP_ERROR_RFMON_NOTSUP ;
 int PacketGetMonitorMode (int ) ;
 scalar_t__ PacketGetNetType (TYPE_6__*,TYPE_3__*) ;
 TYPE_6__* PacketOpenAdapter (int ) ;
 scalar_t__ PacketSetBuff (TYPE_6__*,scalar_t__) ;
 scalar_t__ PacketSetHwFilter (TYPE_6__*,int) ;
 int PacketSetLoopbackBehavior (TYPE_6__*,int ) ;
 scalar_t__ PacketSetMinToCopy (TYPE_6__*,int) ;
 int PacketSetMonitorMode (int ,int) ;
 int PacketSetReadTimeout (TYPE_6__*,int ) ;
 scalar_t__ PacketSetSnapLen (TYPE_6__*,scalar_t__) ;
 int RegCloseKey (int ) ;
 int RegOpenKeyEx (int ,char*,int ,int ,int *) ;
 int RegQueryValueEx (int ,char*,int *,int *,char*,int *) ;
 scalar_t__ WIN32_DEFAULT_KERNEL_BUFFER_SIZE ;
 int WIN32_DEFAULT_USER_BUFFER_SIZE ;
 int _strlwr (int ) ;
 int errno ;
 int * malloc (int) ;
 int pcap_cleanup_npf (TYPE_2__*) ;
 int pcap_fmt_errmsg_for_errno (int ,int,int ,char*) ;
 int pcap_get_airpcap_handle_npf ;
 int pcap_getevent_npf ;
 int pcap_getnonblock_npf ;
 int pcap_inject_npf ;
 int pcap_live_dump_ended_npf ;
 int pcap_live_dump_npf ;
 int pcap_oid_get_request_npf ;
 int pcap_oid_set_request_npf ;
 int pcap_read_npf ;
 int pcap_read_win32_dag ;
 int pcap_sendqueue_transmit_npf ;
 int pcap_setbuff_npf ;
 int pcap_setfilter_npf ;
 int pcap_setfilter_win32_dag ;
 int pcap_setmintocopy_npf ;
 int pcap_setmode_npf ;
 int pcap_setnonblock_npf ;
 int pcap_setuserbuffer_npf ;
 int pcap_snprintf (char*,int,char*,...) ;
 int pcap_stats_ex_npf ;
 int pcap_stats_npf ;
 int pcap_win32_err_to_str (int ,char*) ;
 int pcap_wsockinit () ;
 int strstr (int ,char*) ;

__attribute__((used)) static int
pcap_activate_npf(pcap_t *p)
{
 struct pcap_win *pw = p->priv;
 NetType type;
 int res;
 char errbuf[PCAP_ERRBUF_SIZE+1];

 if (p->opt.rfmon) {



  if (PacketGetMonitorMode(p->opt.device) == 1)
  {
   pw->rfmon_selfstart = 0;
  }
  else
  {
   if ((res = PacketSetMonitorMode(p->opt.device, 1)) != 1)
   {
    pw->rfmon_selfstart = 0;

    if (res == 0)
    {
     return PCAP_ERROR_RFMON_NOTSUP;
    }
    else
    {
     return PCAP_ERROR;
    }
   }
   else
   {
    pw->rfmon_selfstart = 1;
   }
  }
 }


 pcap_wsockinit();

 pw->adapter = PacketOpenAdapter(p->opt.device);

 if (pw->adapter == ((void*)0))
 {

  pcap_win32_err_to_str(GetLastError(), errbuf);
  if (pw->rfmon_selfstart)
  {
   PacketSetMonitorMode(p->opt.device, 0);
  }
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
      "Error opening adapter: %s", errbuf);
  return (PCAP_ERROR);
 }


 if(PacketGetNetType (pw->adapter,&type) == FALSE)
 {
  pcap_win32_err_to_str(GetLastError(), errbuf);
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
      "Cannot determine the network type: %s", errbuf);
  goto bad;
 }


 switch (type.LinkType)
 {
 case 128:
  p->linktype = DLT_EN10MB;
  break;

 case 140:
  p->linktype = DLT_EN10MB;
  p->dlt_list = (u_int *) malloc(sizeof(u_int) * 2);



  if (p->dlt_list != ((void*)0)) {
   p->dlt_list[0] = DLT_EN10MB;
   p->dlt_list[1] = DLT_DOCSIS;
   p->dlt_count = 2;
  }
  break;

 case 133:
  p->linktype = DLT_FDDI;
  break;

 case 139:
  p->linktype = DLT_IEEE802;
  break;

 case 137:
  p->linktype = DLT_ARCNET;
  break;

 case 138:
  p->linktype = DLT_ARCNET;
  break;

 case 136:
  p->linktype = DLT_ATM_RFC1483;
  break;

 case 134:
  p->linktype = DLT_CHDLC;
  break;

 case 131:
  p->linktype = DLT_PPP_SERIAL;
  break;

 case 132:
  p->linktype = DLT_NULL;
  break;

 case 135:
  p->linktype = DLT_IEEE802_11;
  break;

 case 129:
  p->linktype = DLT_IEEE802_11_RADIO;
  break;

 case 130:
  p->linktype = DLT_PPI;
  break;

 default:
  p->linktype = DLT_EN10MB;
  break;
 }
 if (p->snapshot <= 0 || p->snapshot > MAXIMUM_SNAPLEN)
  p->snapshot = MAXIMUM_SNAPLEN;


 if (p->opt.promisc)
 {

  if (PacketSetHwFilter(pw->adapter,NDIS_PACKET_TYPE_PROMISCUOUS) == FALSE)
  {
   pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE, "failed to set hardware filter to promiscuous mode");
   goto bad;
  }
 }
 else
 {






  if (PacketSetHwFilter(pw->adapter,
   NDIS_PACKET_TYPE_ALL_LOCAL |
   NDIS_PACKET_TYPE_DIRECTED |
   NDIS_PACKET_TYPE_BROADCAST |
   NDIS_PACKET_TYPE_MULTICAST) == FALSE)
  {
   pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE, "failed to set hardware filter to non-promiscuous mode");
   goto bad;
  }
 }


 p->bufsize = WIN32_DEFAULT_USER_BUFFER_SIZE;

 if(!(pw->adapter->Flags & INFO_FLAG_DAG_CARD))
 {







   if (p->opt.buffer_size == 0)
    p->opt.buffer_size = WIN32_DEFAULT_KERNEL_BUFFER_SIZE;

  if(PacketSetBuff(pw->adapter,p->opt.buffer_size)==FALSE)
  {
   pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE, "driver error: not enough memory to allocate the kernel buffer");
   goto bad;
  }

  p->buffer = malloc(p->bufsize);
  if (p->buffer == ((void*)0))
  {
   pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
       errno, "malloc");
   goto bad;
  }

  if (p->opt.immediate)
  {

   if(PacketSetMinToCopy(pw->adapter,0)==FALSE)
   {
    pcap_win32_err_to_str(GetLastError(), errbuf);
    pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
        "Error calling PacketSetMinToCopy: %s",
        errbuf);
    goto bad;
   }
  }
  else
  {

   if(PacketSetMinToCopy(pw->adapter,16000)==FALSE)
   {
    pcap_win32_err_to_str(GetLastError(), errbuf);
    pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
        "Error calling PacketSetMinToCopy: %s",
        errbuf);
    goto bad;
   }
  }
 } else {
  goto bad;

 }

 PacketSetReadTimeout(pw->adapter, p->opt.timeout);


 if (p->opt.nocapture_local)
 {
  if (!PacketSetLoopbackBehavior(pw->adapter, NPF_DISABLE_LOOPBACK))
  {
   pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
       "Unable to disable the capture of loopback packets.");
   goto bad;
  }
 }
  p->read_op = pcap_read_npf;
  p->setfilter_op = pcap_setfilter_npf;



 p->setdirection_op = ((void*)0);

 p->inject_op = pcap_inject_npf;
 p->set_datalink_op = ((void*)0);
 p->getnonblock_op = pcap_getnonblock_npf;
 p->setnonblock_op = pcap_setnonblock_npf;
 p->stats_op = pcap_stats_npf;
 p->stats_ex_op = pcap_stats_ex_npf;
 p->setbuff_op = pcap_setbuff_npf;
 p->setmode_op = pcap_setmode_npf;
 p->setmintocopy_op = pcap_setmintocopy_npf;
 p->getevent_op = pcap_getevent_npf;
 p->oid_get_request_op = pcap_oid_get_request_npf;
 p->oid_set_request_op = pcap_oid_set_request_npf;
 p->sendqueue_transmit_op = pcap_sendqueue_transmit_npf;
 p->setuserbuffer_op = pcap_setuserbuffer_npf;
 p->live_dump_op = pcap_live_dump_npf;
 p->live_dump_ended_op = pcap_live_dump_ended_npf;
 p->get_airpcap_handle_op = pcap_get_airpcap_handle_npf;
 p->cleanup_op = pcap_cleanup_npf;
 p->handle = pw->adapter->hFile;

 return (0);
bad:
 pcap_cleanup_npf(p);
 return (PCAP_ERROR);
}
