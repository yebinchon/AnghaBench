
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pcap_tc {int * PpiPacket; int * TcInstance; int * TcPacketsBuffer; } ;
struct TYPE_5__ {struct pcap_tc* priv; } ;
typedef TYPE_1__ pcap_t ;
struct TYPE_6__ {int (* InstanceClose ) (int *) ;int (* PacketsBufferDestroy ) (int *) ;} ;


 int free (int *) ;
 TYPE_3__ g_TcFunctions ;
 int pcap_cleanup_live_common (TYPE_1__*) ;
 int stub1 (int *) ;
 int stub2 (int *) ;

__attribute__((used)) static void TcCleanup(pcap_t *p)
{
 struct pcap_tc *pt = p->priv;

 if (pt->TcPacketsBuffer != ((void*)0))
 {
  g_TcFunctions.PacketsBufferDestroy(pt->TcPacketsBuffer);
  pt->TcPacketsBuffer = ((void*)0);
 }
 if (pt->TcInstance != ((void*)0))
 {



  g_TcFunctions.InstanceClose(pt->TcInstance);
  pt->TcInstance = ((void*)0);
 }

 if (pt->PpiPacket != ((void*)0))
 {
  free(pt->PpiPacket);
  pt->PpiPacket = ((void*)0);
 }

 pcap_cleanup_live_common(p);
}
