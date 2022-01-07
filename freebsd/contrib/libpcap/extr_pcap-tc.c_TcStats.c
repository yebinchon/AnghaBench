
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pcap_tc {int TcAcceptedCount; int TcInstance; } ;
struct pcap_stat {int ps_recv; int ps_ifdrop; int ps_drop; int ps_capt; } ;
typedef int s ;
struct TYPE_4__ {int errbuf; struct pcap_tc* priv; } ;
typedef TYPE_1__ pcap_t ;
typedef scalar_t__ ULONGLONG ;
typedef void* ULONG ;
struct TYPE_5__ {scalar_t__ (* InstanceQueryStatistics ) (int ,int *) ;scalar_t__ (* StatisticsQueryValue ) (int ,int ,scalar_t__*) ;int (* StatusGetString ) (scalar_t__) ;} ;
typedef scalar_t__ TC_STATUS ;
typedef int TC_STATISTICS ;


 int PCAP_ERRBUF_SIZE ;
 int TC_COUNTER_INSTANCE_RX_DROPPED_PACKETS ;
 int TC_COUNTER_INSTANCE_TOTAL_RX_PACKETS ;
 scalar_t__ TC_SUCCESS ;
 TYPE_2__ g_TcFunctions ;
 int memset (struct pcap_stat*,int ,int) ;
 int pcap_snprintf (int ,int ,char*,int ,scalar_t__) ;
 scalar_t__ stub1 (int ,int *) ;
 int stub2 (scalar_t__) ;
 scalar_t__ stub3 (int ,int ,scalar_t__*) ;
 int stub4 (scalar_t__) ;
 scalar_t__ stub5 (int ,int ,scalar_t__*) ;
 int stub6 (scalar_t__) ;

__attribute__((used)) static int
TcStats(pcap_t *p, struct pcap_stat *ps)
{
 struct pcap_tc *pt = p->priv;
 TC_STATISTICS statistics;
 TC_STATUS status;
 ULONGLONG counter;
 struct pcap_stat s;

 status = g_TcFunctions.InstanceQueryStatistics(pt->TcInstance, &statistics);

 if (status != TC_SUCCESS)
 {
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE, "TurboCap error in TcInstanceQueryStatistics: %s (%08x)", g_TcFunctions.StatusGetString(status), status);
  return -1;
 }

 memset(&s, 0, sizeof(s));

 status = g_TcFunctions.StatisticsQueryValue(statistics, TC_COUNTER_INSTANCE_TOTAL_RX_PACKETS, &counter);
 if (status != TC_SUCCESS)
 {
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE, "TurboCap error in TcStatisticsQueryValue: %s (%08x)", g_TcFunctions.StatusGetString(status), status);
  return -1;
 }
 if (counter <= (ULONGLONG)0xFFFFFFFF)
 {
  s.ps_recv = (ULONG)counter;
 }
 else
 {
  s.ps_recv = 0xFFFFFFFF;
 }

 status = g_TcFunctions.StatisticsQueryValue(statistics, TC_COUNTER_INSTANCE_RX_DROPPED_PACKETS, &counter);
 if (status != TC_SUCCESS)
 {
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE, "TurboCap error in TcStatisticsQueryValue: %s (%08x)", g_TcFunctions.StatusGetString(status), status);
  return -1;
 }
 if (counter <= (ULONGLONG)0xFFFFFFFF)
 {
  s.ps_ifdrop = (ULONG)counter;
  s.ps_drop = (ULONG)counter;
 }
 else
 {
  s.ps_ifdrop = 0xFFFFFFFF;
  s.ps_drop = 0xFFFFFFFF;
 }




 *ps = s;

 return 0;
}
