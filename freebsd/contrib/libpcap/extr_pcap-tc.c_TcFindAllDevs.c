
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ pcap_if_t ;
typedef int pcap_if_list_t ;
typedef size_t ULONG ;
struct TYPE_7__ {TYPE_1__* beginning; } ;
struct TYPE_6__ {scalar_t__ (* QueryPortList ) (int **,size_t*) ;scalar_t__ (* FreePortList ) (int *) ;} ;
typedef scalar_t__ TC_STATUS ;
typedef scalar_t__ TC_API_LOAD_STATUS ;
typedef int * PTC_PORT ;


 scalar_t__ FALSE ;
 scalar_t__ LoadTcFunctions () ;
 scalar_t__ TC_API_LOADED ;
 scalar_t__ TC_SUCCESS ;
 TYPE_1__* TcCreatePcapIfFromPort (int ) ;
 TYPE_3__* devlistp ;
 TYPE_2__ g_TcFunctions ;
 scalar_t__ stub1 (int **,size_t*) ;
 scalar_t__ stub2 (int *) ;

int
TcFindAllDevs(pcap_if_list_t *devlist, char *errbuf)
{
 TC_API_LOAD_STATUS loadStatus;
 ULONG numPorts;
 PTC_PORT pPorts = ((void*)0);
 TC_STATUS status;
 int result = 0;
 pcap_if_t *dev, *cursor;
 ULONG i;

 do
 {
  loadStatus = LoadTcFunctions();

  if (loadStatus != TC_API_LOADED)
  {
   result = 0;
   break;
  }




  status = g_TcFunctions.QueryPortList(&pPorts, &numPorts);

  if (status != TC_SUCCESS)
  {
   result = 0;
   break;
  }

  for (i = 0; i < numPorts; i++)
  {



   dev = TcCreatePcapIfFromPort(pPorts[i]);

   if (dev != ((void*)0))
   {



    if (devlistp->beginning == ((void*)0))
    {
     devlistp->beginning = dev;
    }
    else
    {
     for (cursor = devlistp->beginning;
         cursor->next != ((void*)0);
         cursor = cursor->next);
     cursor->next = dev;
    }
   }
  }

  if (numPorts > 0)
  {



   status = g_TcFunctions.FreePortList(pPorts);
  }

 }while(FALSE);

 return result;
}
