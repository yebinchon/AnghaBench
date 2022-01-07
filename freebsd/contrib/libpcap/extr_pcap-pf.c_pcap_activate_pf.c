
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u_int ;
struct timeval {int tv_sec; int tv_usec; } ;
struct pcap_pf {int OrigMissed; } ;
struct enfilter {int enf_Priority; scalar_t__ enf_FilterLen; } ;
struct endevp {int end_dev_type; } ;
struct TYPE_5__ {int device; int timeout; scalar_t__ promisc; int immediate; } ;
struct TYPE_6__ {int fd; scalar_t__ snapshot; scalar_t__ linktype; int offset; int dlt_count; scalar_t__ fddipad; int bufsize; int selectable_fd; int stats_op; int setnonblock_op; int getnonblock_op; int * set_datalink_op; int * setdirection_op; int setfilter_op; int inject_op; int read_op; int errbuf; int * buffer; TYPE_1__ opt; void** dlt_list; struct pcap_pf* priv; } ;
typedef TYPE_2__ pcap_t ;
typedef int caddr_t ;
typedef int Filter ;


 int BUFSPACE ;
 void* DLT_DOCSIS ;
 void* DLT_EN10MB ;
 scalar_t__ DLT_FDDI ;
 scalar_t__ DLT_IEEE802 ;
 scalar_t__ DLT_PPP ;
 scalar_t__ DLT_SLIP ;
 scalar_t__ EACCES ;
 int EIOCDEVP ;
 int EIOCMBIS ;
 int EIOCSETF ;
 int EIOCSETW ;
 int EIOCSRTIMEOUT ;
 int EIOCTRUNCATE ;
 short ENBATCH ;
 short ENCOPYALL ;






 short ENNONEXCL ;
 short ENPROMISC ;
 short ENTSTAMP ;
 scalar_t__ MAXIMUM_SNAPLEN ;
 int O_RDONLY ;
 int O_RDWR ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int PCAP_ERROR_PERM_DENIED ;
 scalar_t__ PCAP_FDDIPAD ;
 scalar_t__ errno ;
 scalar_t__ ioctl (int,int ,int ) ;
 int * malloc (int) ;
 int memset (struct enfilter*,int ,int) ;
 int pcap_cleanup_live_common (TYPE_2__*) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,scalar_t__,char*,...) ;
 int pcap_getnonblock_fd ;
 int pcap_inject_pf ;
 int pcap_read_pf ;
 int pcap_setfilter_pf ;
 int pcap_setnonblock_fd ;
 int pcap_snprintf (int ,int ,char*,int) ;
 int pcap_stats_pf ;
 void* pfopen (int,int ) ;

__attribute__((used)) static int
pcap_activate_pf(pcap_t *p)
{
 struct pcap_pf *pf = p->priv;
 short enmode;
 int backlog = -1;
 struct enfilter Filter;
 struct endevp devparams;
 int err;
 p->fd = pfopen(p->opt.device, O_RDWR);
 if (p->fd == -1 && errno == EACCES)
  p->fd = pfopen(p->opt.device, O_RDONLY);
 if (p->fd < 0) {
  if (errno == EACCES) {
   pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
       "pf open: %s: Permission denied\n"
"your system may not be properly configured; see the packetfilter(4) man page",
       p->opt.device);
   err = PCAP_ERROR_PERM_DENIED;
  } else {
   pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
       errno, "pf open: %s", p->opt.device);
   err = PCAP_ERROR;
  }
  goto bad;
 }
 if (p->snapshot <= 0 || p->snapshot > MAXIMUM_SNAPLEN)
  p->snapshot = MAXIMUM_SNAPLEN;

 pf->OrigMissed = -1;
 enmode = ENTSTAMP|ENNONEXCL;
 if (!p->opt.immediate)
  enmode |= ENBATCH;
 if (p->opt.promisc)
  enmode |= ENPROMISC;
 if (ioctl(p->fd, EIOCMBIS, (caddr_t)&enmode) < 0) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "EIOCMBIS");
  err = PCAP_ERROR;
  goto bad;
 }






 if (ioctl(p->fd, EIOCSETW, (caddr_t)&backlog) < 0) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "EIOCSETW");
  err = PCAP_ERROR;
  goto bad;
 }

 if (ioctl(p->fd, EIOCDEVP, (caddr_t)&devparams) < 0) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "EIOCDEVP");
  err = PCAP_ERROR;
  goto bad;
 }




 switch (devparams.end_dev_type) {

 case 133:
  p->linktype = DLT_EN10MB;
  p->offset = 2;
  p->dlt_list = (u_int *) malloc(sizeof(u_int) * 2);



  if (p->dlt_list != ((void*)0)) {
   p->dlt_list[0] = DLT_EN10MB;
   p->dlt_list[1] = DLT_DOCSIS;
   p->dlt_count = 2;
  }
  break;

 case 132:
  p->linktype = DLT_FDDI;
  break;


 case 129:
  p->linktype = DLT_SLIP;
  break;



 case 130:
  p->linktype = DLT_PPP;
  break;



 case 131:




  p->linktype = DLT_EN10MB;
  p->offset = 2;
  break;



 case 128:
  p->linktype = DLT_IEEE802;
  break;


 default:
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
      "unknown data-link type %u", devparams.end_dev_type);
  err = PCAP_ERROR;
  goto bad;
 }

 if (p->linktype == DLT_FDDI) {
  p->fddipad = PCAP_FDDIPAD;


  p->snapshot += PCAP_FDDIPAD;
 } else
  p->fddipad = 0;
 if (ioctl(p->fd, EIOCTRUNCATE, (caddr_t)&p->snapshot) < 0) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "EIOCTRUNCATE");
  err = PCAP_ERROR;
  goto bad;
 }

 memset(&Filter, 0, sizeof(Filter));
 Filter.enf_Priority = 37;
 Filter.enf_FilterLen = 0;
 if (ioctl(p->fd, EIOCSETF, (caddr_t)&Filter) < 0) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "EIOCSETF");
  err = PCAP_ERROR;
  goto bad;
 }

 if (p->opt.timeout != 0) {
  struct timeval timeout;
  timeout.tv_sec = p->opt.timeout / 1000;
  timeout.tv_usec = (p->opt.timeout * 1000) % 1000000;
  if (ioctl(p->fd, EIOCSRTIMEOUT, (caddr_t)&timeout) < 0) {
   pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
       errno, "EIOCSRTIMEOUT");
   err = PCAP_ERROR;
   goto bad;
  }
 }

 p->bufsize = BUFSPACE;
 p->buffer = malloc(p->bufsize + p->offset);
 if (p->buffer == ((void*)0)) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "malloc");
  err = PCAP_ERROR;
  goto bad;
 }




 p->selectable_fd = p->fd;

 p->read_op = pcap_read_pf;
 p->inject_op = pcap_inject_pf;
 p->setfilter_op = pcap_setfilter_pf;
 p->setdirection_op = ((void*)0);
 p->set_datalink_op = ((void*)0);
 p->getnonblock_op = pcap_getnonblock_fd;
 p->setnonblock_op = pcap_setnonblock_fd;
 p->stats_op = pcap_stats_pf;

 return (0);
 bad:
 pcap_cleanup_live_common(p);
 return (err);
}
