
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* u_int ;
struct sockaddr_nit {int snit_ifname; int snit_family; } ;
struct sockaddr {int dummy; } ;
typedef int snit ;
struct TYPE_7__ {int device; scalar_t__ rfmon; } ;
struct TYPE_8__ {int snapshot; int fd; int bufsize; int selectable_fd; int dlt_count; int stats_op; int setnonblock_op; int getnonblock_op; int * set_datalink_op; int * setdirection_op; int setfilter_op; int inject_op; int read_op; void** dlt_list; int errbuf; int * buffer; void* linktype; TYPE_1__ opt; } ;
typedef TYPE_2__ pcap_t ;


 int AF_NIT ;
 int BUFSPACE ;
 void* DLT_DOCSIS ;
 void* DLT_EN10MB ;
 int MAXIMUM_SNAPLEN ;
 int NITIFSIZ ;
 int NITPROTO_RAW ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int PCAP_ERROR_RFMON_NOTSUP ;
 int SOCK_RAW ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int errno ;
 int install_bpf_program ;
 int * malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ nit_setflags (TYPE_2__*) ;
 int pcap_cleanup_live_common (TYPE_2__*) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,int ,char*,...) ;
 int pcap_getnonblock_fd ;
 int pcap_inject_nit ;
 int pcap_read_nit ;
 int pcap_setnonblock_fd ;
 int pcap_stats_nit ;
 int socket (int ,int ,int ) ;
 int strncpy (int ,int ,int ) ;

__attribute__((used)) static int
pcap_activate_nit(pcap_t *p)
{
 int fd;
 struct sockaddr_nit snit;

 if (p->opt.rfmon) {





  return (PCAP_ERROR_RFMON_NOTSUP);
 }
 if (p->snapshot <= 0 || p->snapshot > MAXIMUM_SNAPLEN)
  p->snapshot = MAXIMUM_SNAPLEN;

 if (p->snapshot < 96)



  p->snapshot = 96;

 memset(p, 0, sizeof(*p));
 p->fd = fd = socket(AF_NIT, SOCK_RAW, NITPROTO_RAW);
 if (fd < 0) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "socket");
  goto bad;
 }
 snit.snit_family = AF_NIT;
 (void)strncpy(snit.snit_ifname, p->opt.device, NITIFSIZ);

 if (bind(fd, (struct sockaddr *)&snit, sizeof(snit))) {







  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "bind: %s", snit.snit_ifname);
  goto bad;
 }
 if (nit_setflags(p) < 0)
  goto bad;




 p->linktype = DLT_EN10MB;

 p->bufsize = BUFSPACE;
 p->buffer = malloc(p->bufsize);
 if (p->buffer == ((void*)0)) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "malloc");
  goto bad;
 }




 p->selectable_fd = p->fd;
 p->dlt_list = (u_int *) malloc(sizeof(u_int) * 2);



 if (p->dlt_list != ((void*)0)) {
  p->dlt_list[0] = DLT_EN10MB;
  p->dlt_list[1] = DLT_DOCSIS;
  p->dlt_count = 2;
 }

 p->read_op = pcap_read_nit;
 p->inject_op = pcap_inject_nit;
 p->setfilter_op = install_bpf_program;
 p->setdirection_op = ((void*)0);
 p->set_datalink_op = ((void*)0);
 p->getnonblock_op = pcap_getnonblock_fd;
 p->setnonblock_op = pcap_setnonblock_fd;
 p->stats_op = pcap_stats_nit;

 return (0);
 bad:
 pcap_cleanup_live_common(p);
 return (PCAP_ERROR);
}
