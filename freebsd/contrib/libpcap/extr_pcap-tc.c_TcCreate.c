
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pcap_tc {int dummy; } ;
struct TYPE_5__ {int setnonblock_op; int getnonblock_op; int activate_op; } ;
typedef TYPE_1__ pcap_t ;
typedef size_t ULONG ;
struct TYPE_6__ {scalar_t__ (* QueryPortList ) (int **,size_t*) ;int (* FreePortList ) (int *) ;int (* PortGetName ) (int ) ;} ;
typedef scalar_t__ TC_STATUS ;
typedef int * PTC_PORT ;


 int FALSE ;
 scalar_t__ LoadTcFunctions () ;
 scalar_t__ TC_API_LOADED ;
 scalar_t__ TC_SUCCESS ;
 int TRUE ;
 int TcActivate ;
 int TcGetNonBlock ;
 int TcSetNonBlock ;
 TYPE_3__ g_TcFunctions ;
 TYPE_1__* pcap_create_common (char*,int) ;
 scalar_t__ strcmp (int ,char const*) ;
 scalar_t__ stub1 (int **,size_t*) ;
 int stub2 (int ) ;
 int stub3 (int *) ;

pcap_t *
TcCreate(const char *device, char *ebuf, int *is_ours)
{
 ULONG numPorts;
 PTC_PORT pPorts = ((void*)0);
 TC_STATUS status;
 int is_tc;
 ULONG i;
 pcap_t *p;

 if (LoadTcFunctions() != TC_API_LOADED)
 {




  *is_ours = 0;
  return ((void*)0);
 }




 status = g_TcFunctions.QueryPortList(&pPorts, &numPorts);

 if (status != TC_SUCCESS)
 {




  *is_ours = 0;
  return ((void*)0);
 }

 is_tc = FALSE;
 for (i = 0; i < numPorts; i++)
 {
  if (strcmp(g_TcFunctions.PortGetName(pPorts[i]), device) == 0)
  {
   is_tc = TRUE;
   break;
  }
 }

 if (numPorts > 0)
 {



  (void)g_TcFunctions.FreePortList(pPorts);
 }

 if (!is_tc)
 {
  *is_ours = 0;
  return ((void*)0);
 }


 *is_ours = 1;

 p = pcap_create_common(ebuf, sizeof (struct pcap_tc));
 if (p == ((void*)0))
  return ((void*)0);

 p->activate_op = TcActivate;







 p->getnonblock_op = TcGetNonBlock;
 p->setnonblock_op = TcSetNonBlock;
 return p;
}
