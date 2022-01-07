
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_16__ ;


typedef int u_char ;
struct pcap_tc {TYPE_6__* PpiPacket; int TcAcceptedCount; int * TcPacketsBuffer; int TcInstance; } ;
struct TYPE_22__ {void* tv_usec; void* tv_sec; } ;
struct pcap_pkthdr {scalar_t__ len; scalar_t__ caplen; TYPE_2__ ts; } ;
struct TYPE_21__ {scalar_t__ bf_insns; } ;
struct TYPE_25__ {scalar_t__ linktype; TYPE_1__ fcode; int errbuf; scalar_t__ break_loop; struct pcap_tc* priv; } ;
typedef TYPE_5__ pcap_t ;
typedef int (* pcap_handler ) (int *,struct pcap_pkthdr*,TYPE_6__*) ;
typedef void* bpf_u_int32 ;
typedef int ULONGLONG ;
typedef scalar_t__ ULONG ;
struct TYPE_27__ {scalar_t__ CapturedLength; int Timestamp; int Flags; scalar_t__ Length; int Errors; } ;
struct TYPE_24__ {scalar_t__ Flags; int Errors; } ;
struct TYPE_23__ {int InterfaceId; } ;
struct TYPE_26__ {TYPE_4__ Dot3Field; TYPE_3__ AggregationField; } ;
struct TYPE_20__ {scalar_t__ (* InstanceReceivePackets ) (int ,int **) ;scalar_t__ (* PacketsBufferQueryNextPacket ) (int *,TYPE_7__*,TYPE_6__**) ;int (* StatusGetString ) (scalar_t__) ;int (* PacketsBufferDestroy ) (int *) ;} ;
typedef scalar_t__ TC_STATUS ;
typedef TYPE_7__ TC_PACKET_HEADER ;
typedef TYPE_6__* PVOID ;
typedef TYPE_6__* PPPI_HEADER ;
typedef int PPI_HEADER ;


 scalar_t__ DLT_EN10MB ;
 scalar_t__ MAX_TC_PACKET_SIZE ;
 int PCAP_ERRBUF_SIZE ;
 scalar_t__ PPI_FLD_802_3_EXT_FLAG_FCS_PRESENT ;
 scalar_t__ TC_ERROR_END_OF_BUFFER ;
 int TC_PH_FLAGS_CHECKSUM ;
 int TC_PH_FLAGS_RX_PORT_ID (int) ;
 scalar_t__ TC_SUCCESS ;
 scalar_t__ TRUE ;
 scalar_t__ bpf_filter (scalar_t__,TYPE_6__*,scalar_t__,scalar_t__) ;
 TYPE_16__ g_TcFunctions ;
 int memcpy (TYPE_6__*,TYPE_6__*,scalar_t__) ;
 int pcap_snprintf (int ,int ,char*,int ,scalar_t__) ;
 scalar_t__ stub1 (int ,int **) ;
 int stub2 (scalar_t__) ;
 scalar_t__ stub3 (int *,TYPE_7__*,TYPE_6__**) ;
 int stub4 (int *) ;
 int stub5 (scalar_t__) ;
 int stub6 (int *,struct pcap_pkthdr*,TYPE_6__*) ;
 int stub7 (int *,struct pcap_pkthdr*,TYPE_6__*) ;

__attribute__((used)) static int TcRead(pcap_t *p, int cnt, pcap_handler callback, u_char *user)
{
 struct pcap_tc *pt = p->priv;
 TC_STATUS status;
 int n = 0;




 if (p->break_loop)
 {





  p->break_loop = 0;
  return -2;
 }

 if (pt->TcPacketsBuffer == ((void*)0))
 {
  status = g_TcFunctions.InstanceReceivePackets(pt->TcInstance, &pt->TcPacketsBuffer);
  if (status != TC_SUCCESS)
  {
   pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE, "read error, TcInstanceReceivePackets failure: %s (%08x)", g_TcFunctions.StatusGetString(status), status);
   return -1;
  }
 }

 while (TRUE)
 {
  struct pcap_pkthdr hdr;
  TC_PACKET_HEADER tcHeader;
  PVOID data;
  ULONG filterResult;
  if (p->break_loop)
  {
   if (n == 0)
   {
    p->break_loop = 0;
    return -2;
   }
   else
   {
    return n;
   }
  }

  if (pt->TcPacketsBuffer == ((void*)0))
  {
   break;
  }

  status = g_TcFunctions.PacketsBufferQueryNextPacket(pt->TcPacketsBuffer, &tcHeader, &data);

  if (status == TC_ERROR_END_OF_BUFFER)
  {
   g_TcFunctions.PacketsBufferDestroy(pt->TcPacketsBuffer);
   pt->TcPacketsBuffer = ((void*)0);
   break;
  }

  if (status != TC_SUCCESS)
  {
   pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE, "read error, TcPacketsBufferQueryNextPacket failure: %s (%08x)", g_TcFunctions.StatusGetString(status), status);
   return -1;
  }


  if (p->fcode.bf_insns)
  {
   filterResult = bpf_filter(p->fcode.bf_insns, data, tcHeader.Length, tcHeader.CapturedLength);

   if (filterResult == 0)
   {
    continue;
   }

   if (filterResult > tcHeader.CapturedLength)
   {
    filterResult = tcHeader.CapturedLength;
   }
  }
  else
  {
   filterResult = tcHeader.CapturedLength;
  }

  pt->TcAcceptedCount ++;

  hdr.ts.tv_sec = (bpf_u_int32)(tcHeader.Timestamp / (ULONGLONG)(1000 * 1000 * 1000));
  hdr.ts.tv_usec = (bpf_u_int32)((tcHeader.Timestamp % (ULONGLONG)(1000 * 1000 * 1000)) / 1000);

  if (p->linktype == DLT_EN10MB)
  {
   hdr.caplen = filterResult;
   hdr.len = tcHeader.Length;
   (*callback)(user, &hdr, data);
  }
  else
  {
   PPPI_HEADER pPpiHeader = (PPPI_HEADER)pt->PpiPacket;
   PVOID data2 = pPpiHeader + 1;

   pPpiHeader->AggregationField.InterfaceId = TC_PH_FLAGS_RX_PORT_ID(tcHeader.Flags);
   pPpiHeader->Dot3Field.Errors = tcHeader.Errors;
   if (tcHeader.Flags & TC_PH_FLAGS_CHECKSUM)
   {
    pPpiHeader->Dot3Field.Flags = PPI_FLD_802_3_EXT_FLAG_FCS_PRESENT;
   }
   else
   {
    pPpiHeader->Dot3Field.Flags = 0;
   }

   if (filterResult <= MAX_TC_PACKET_SIZE)
   {
    memcpy(data2, data, filterResult);
    hdr.caplen = sizeof(PPI_HEADER) + filterResult;
    hdr.len = sizeof(PPI_HEADER) + tcHeader.Length;
   }
   else
   {
    memcpy(data2, data, MAX_TC_PACKET_SIZE);
    hdr.caplen = sizeof(PPI_HEADER) + MAX_TC_PACKET_SIZE;
    hdr.len = sizeof(PPI_HEADER) + tcHeader.Length;
   }

   (*callback)(user, &hdr, pt->PpiPacket);

  }

  if (++n >= cnt && cnt > 0)
  {
   return n;
  }
 }

 return n;
}
