
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
struct rpcap_openreply {int tzoff; int linktype; } ;
struct rpcap_header {int plen; } ;
struct pcap_rpcap {int rmt_flags; int rmt_clientside; int rmt_sockctrl; int protocol_version; } ;
struct pcap_rmtauth {int dummy; } ;
struct addrinfo {int ai_socktype; int ai_family; } ;
struct activehosts {int protocol_version; int sockctrl; } ;
struct TYPE_6__ {char* device; int timeout; } ;
struct TYPE_7__ {int snapshot; int activated; int cleanup_op; int stats_ex_op; int stats_op; int setnonblock_op; int getnonblock_op; int setfilter_op; int save_current_filter_op; int read_op; void* tzoff; void* linktype; TYPE_1__ opt; struct pcap_rpcap* priv; } ;
typedef TYPE_2__ pcap_t ;
typedef int SOCKET ;


 int INVALID_SOCKET ;
 int MAXIMUM_SNAPLEN ;
 int PCAP_BUF_SIZE ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_SRC_IFREMOTE ;
 int PF_UNSPEC ;
 char* RPCAP_DEFAULT_NETPORT ;
 int RPCAP_MSG_OPEN_REQ ;
 int RPCAP_NETBUF_SIZE ;
 int SOCKBUF_BUFFERIZE ;
 int SOCKBUF_CHECKONLY ;
 int SOCKOPEN_CLIENT ;
 int SOCK_STREAM ;
 int errno ;
 int freeaddrinfo (struct addrinfo*) ;
 int memset (struct addrinfo*,int ,int) ;
 void* ntohl (int ) ;
 int pcap_cleanup_rpcap ;
 int pcap_close (TYPE_2__*) ;
 TYPE_2__* pcap_create_common (char*,int) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,int ,char*) ;
 int pcap_getnonblock_rpcap ;
 int pcap_parsesrcstr (char*,int*,char*,char*,char*,char*) ;
 int pcap_read_rpcap ;
 int pcap_save_current_filter_rpcap ;
 int pcap_setfilter_rpcap ;
 int pcap_setnonblock_rpcap ;
 int pcap_snprintf (char*,int ,char*) ;
 int pcap_stats_ex_rpcap ;
 int pcap_stats_rpcap ;
 int rpcap_createhdr (struct rpcap_header*,int ,int ,int ,int ) ;
 int rpcap_discard (int ,int ,char*) ;
 int rpcap_doauth (int ,int *,struct pcap_rmtauth*,char*) ;
 int rpcap_process_msg_header (int ,int ,int ,struct rpcap_header*,char*) ;
 int rpcap_recv (int ,char*,int,int *,char*) ;
 struct activehosts* rpcap_remoteact_getsock (char*,int*,char*) ;
 scalar_t__ sock_bufferize (char*,int,char*,int*,int,int ,char*,int ) ;
 int sock_close (int ,int *,int ) ;
 int sock_init (char*,int ) ;
 int sock_initaddress (char*,char*,struct addrinfo*,struct addrinfo**,char*,int ) ;
 int sock_open (struct addrinfo*,int ,int ,char*,int ) ;
 scalar_t__ sock_send (int ,char*,int,char*,int ) ;
 char* strdup (char const*) ;
 scalar_t__ strlen (char*) ;

pcap_t *pcap_open_rpcap(const char *source, int snaplen, int flags, int read_timeout, struct pcap_rmtauth *auth, char *errbuf)
{
 pcap_t *fp;
 char *source_str;
 struct pcap_rpcap *pr;
 char host[PCAP_BUF_SIZE], ctrlport[PCAP_BUF_SIZE], iface[PCAP_BUF_SIZE];
 struct activehosts *activeconn;
 int error;
 SOCKET sockctrl;
 uint8 protocol_version;
 int active;
 uint32 plen;
 char sendbuf[RPCAP_NETBUF_SIZE];
 int sendbufidx = 0;
 int retval;


 struct rpcap_header header;
 struct rpcap_openreply openreply;

 fp = pcap_create_common(errbuf, sizeof (struct pcap_rpcap));
 if (fp == ((void*)0))
 {
  return ((void*)0);
 }
 source_str = strdup(source);
 if (source_str == ((void*)0)) {
  pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
      errno, "malloc");
  return ((void*)0);
 }
 if (snaplen <= 0 || snaplen > MAXIMUM_SNAPLEN)
  snaplen = MAXIMUM_SNAPLEN;

 fp->opt.device = source_str;
 fp->snapshot = snaplen;
 fp->opt.timeout = read_timeout;
 pr = fp->priv;
 pr->rmt_flags = flags;






 if (pcap_parsesrcstr(fp->opt.device, &retval, host, ctrlport, iface, errbuf) == -1)
 {
  pcap_close(fp);
  return ((void*)0);
 }

 if (retval != PCAP_SRC_IFREMOTE)
 {
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE, "This function is able to open only remote interfaces");
  pcap_close(fp);
  return ((void*)0);
 }





 if (sock_init(errbuf, PCAP_ERRBUF_SIZE) == -1)
 {
  pcap_close(fp);
  return ((void*)0);
 }


 activeconn = rpcap_remoteact_getsock(host, &error, errbuf);
 if (activeconn != ((void*)0))
 {
  sockctrl = activeconn->sockctrl;
  protocol_version = activeconn->protocol_version;
  active = 1;
 }
 else
 {
  struct addrinfo hints;
  struct addrinfo *addrinfo;

  if (error)
  {



   pcap_close(fp);
   return ((void*)0);
  }





  memset(&hints, 0, sizeof(struct addrinfo));
  hints.ai_family = PF_UNSPEC;
  hints.ai_socktype = SOCK_STREAM;

  if (ctrlport[0] == 0)
  {

   if (sock_initaddress(host, RPCAP_DEFAULT_NETPORT, &hints, &addrinfo, errbuf, PCAP_ERRBUF_SIZE) == -1)
   {
    pcap_close(fp);
    return ((void*)0);
   }
  }
  else
  {
   if (sock_initaddress(host, ctrlport, &hints, &addrinfo, errbuf, PCAP_ERRBUF_SIZE) == -1)
   {
    pcap_close(fp);
    return ((void*)0);
   }
  }

  if ((sockctrl = sock_open(addrinfo, SOCKOPEN_CLIENT, 0, errbuf, PCAP_ERRBUF_SIZE)) == INVALID_SOCKET)
  {
   freeaddrinfo(addrinfo);
   pcap_close(fp);
   return ((void*)0);
  }


  freeaddrinfo(addrinfo);

  if (rpcap_doauth(sockctrl, &protocol_version, auth, errbuf) == -1)
  {
   sock_close(sockctrl, ((void*)0), 0);
   pcap_close(fp);
   return ((void*)0);
  }
  active = 0;
 }





 if (sock_bufferize(((void*)0), sizeof(struct rpcap_header), ((void*)0),
  &sendbufidx, RPCAP_NETBUF_SIZE, SOCKBUF_CHECKONLY, errbuf, PCAP_ERRBUF_SIZE))
  goto error_nodiscard;

 rpcap_createhdr((struct rpcap_header *) sendbuf, protocol_version,
     RPCAP_MSG_OPEN_REQ, 0, (uint32) strlen(iface));

 if (sock_bufferize(iface, (int) strlen(iface), sendbuf, &sendbufidx,
  RPCAP_NETBUF_SIZE, SOCKBUF_BUFFERIZE, errbuf, PCAP_ERRBUF_SIZE))
  goto error_nodiscard;

 if (sock_send(sockctrl, sendbuf, sendbufidx, errbuf,
     PCAP_ERRBUF_SIZE) < 0)
  goto error_nodiscard;


 if (rpcap_process_msg_header(sockctrl, protocol_version,
     RPCAP_MSG_OPEN_REQ, &header, errbuf) == -1)
  goto error_nodiscard;
 plen = header.plen;


 if (rpcap_recv(sockctrl, (char *)&openreply,
     sizeof(struct rpcap_openreply), &plen, errbuf) == -1)
  goto error;


 if (rpcap_discard(pr->rmt_sockctrl, plen, errbuf) == -1)
  goto error_nodiscard;


 fp->linktype = ntohl(openreply.linktype);
 fp->tzoff = ntohl(openreply.tzoff);
 pr->rmt_sockctrl = sockctrl;
 pr->protocol_version = protocol_version;
 pr->rmt_clientside = 1;


 fp->read_op = pcap_read_rpcap;
 fp->save_current_filter_op = pcap_save_current_filter_rpcap;
 fp->setfilter_op = pcap_setfilter_rpcap;
 fp->getnonblock_op = pcap_getnonblock_rpcap;
 fp->setnonblock_op = pcap_setnonblock_rpcap;
 fp->stats_op = pcap_stats_rpcap;



 fp->cleanup_op = pcap_cleanup_rpcap;

 fp->activated = 1;
 return fp;

error:
 (void)rpcap_discard(pr->rmt_sockctrl, plen, ((void*)0));

error_nodiscard:
 if (!active)
  sock_close(sockctrl, ((void*)0), 0);

 pcap_close(fp);
 return ((void*)0);
}
