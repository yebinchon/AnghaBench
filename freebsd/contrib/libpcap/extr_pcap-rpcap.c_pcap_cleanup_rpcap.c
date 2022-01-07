
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rpcap_header {int plen; } ;
struct pcap_rpcap {scalar_t__ rmt_sockctrl; scalar_t__ rmt_sockdata; int * currentfilter; int protocol_version; } ;
struct activehosts {scalar_t__ sockctrl; struct activehosts* next; } ;
struct TYPE_3__ {struct pcap_rpcap* priv; } ;
typedef TYPE_1__ pcap_t ;


 int RPCAP_MSG_CLOSE ;
 int RPCAP_MSG_ENDCAP_REQ ;
 struct activehosts* activeHosts ;
 int free (int *) ;
 int rpcap_createhdr (struct rpcap_header*,int ,int ,int ,int ) ;
 int rpcap_discard (scalar_t__,int ,int *) ;
 scalar_t__ rpcap_process_msg_header (scalar_t__,int ,int ,struct rpcap_header*,int *) ;
 int sock_cleanup () ;
 int sock_close (scalar_t__,int *,int ) ;
 scalar_t__ sock_send (scalar_t__,char*,int,int *,int ) ;

__attribute__((used)) static void pcap_cleanup_rpcap(pcap_t *fp)
{
 struct pcap_rpcap *pr = fp->priv;
 struct rpcap_header header;
 struct activehosts *temp;
 int active = 0;


 temp = activeHosts;
 while (temp)
 {
  if (temp->sockctrl == pr->rmt_sockctrl)
  {
   active = 1;
   break;
  }
  temp = temp->next;
 }

 if (!active)
 {
  rpcap_createhdr(&header, pr->protocol_version,
      RPCAP_MSG_CLOSE, 0, 0);






  (void)sock_send(pr->rmt_sockctrl, (char *)&header,
      sizeof(struct rpcap_header), ((void*)0), 0);
 }
 else
 {
  rpcap_createhdr(&header, pr->protocol_version,
      RPCAP_MSG_ENDCAP_REQ, 0, 0);






  if (sock_send(pr->rmt_sockctrl, (char *)&header,
      sizeof(struct rpcap_header), ((void*)0), 0) == 0)
  {





   if (rpcap_process_msg_header(pr->rmt_sockctrl,
       pr->protocol_version, RPCAP_MSG_ENDCAP_REQ,
       &header, ((void*)0)) == 0)
   {
    (void)rpcap_discard(pr->rmt_sockctrl,
        header.plen, ((void*)0));
   }
  }
 }

 if (pr->rmt_sockdata)
 {
  sock_close(pr->rmt_sockdata, ((void*)0), 0);
  pr->rmt_sockdata = 0;
 }

 if ((!active) && (pr->rmt_sockctrl))
  sock_close(pr->rmt_sockctrl, ((void*)0), 0);

 pr->rmt_sockctrl = 0;

 if (pr->currentfilter)
 {
  free(pr->currentfilter);
  pr->currentfilter = ((void*)0);
 }


 sock_cleanup();
}
