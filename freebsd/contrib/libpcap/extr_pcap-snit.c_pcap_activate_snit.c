
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* u_int ;
struct strioctl {int ic_len; char* ic_dp; int ic_cmd; int ic_timout; } ;
struct ifreq {char* ifr_name; } ;
struct TYPE_6__ {int device; scalar_t__ rfmon; } ;
struct TYPE_7__ {int snapshot; int fd; int bufsize; int selectable_fd; int dlt_count; int stats_op; int setnonblock_op; int getnonblock_op; int * set_datalink_op; int * setdirection_op; int setfilter_op; int inject_op; int read_op; void** dlt_list; int errbuf; int * buffer; void* linktype; TYPE_1__ opt; } ;
typedef TYPE_2__ pcap_t ;
typedef int ifr ;
typedef int chunksize ;


 int BUFSPACE ;
 int CHUNKSIZE ;
 void* DLT_DOCSIS ;
 void* DLT_EN10MB ;
 scalar_t__ EACCES ;
 scalar_t__ FLUSHR ;
 int INFTIM ;
 int I_FLUSH ;
 int I_PUSH ;
 int I_SRDOPT ;
 int I_STR ;
 int MAXIMUM_SNAPLEN ;
 int NIOCBIND ;
 int NIOCSCHUNK ;
 int NIOCSSNAP ;
 int O_RDONLY ;
 int O_RDWR ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int PCAP_ERROR_PERM_DENIED ;
 int PCAP_ERROR_RFMON_NOTSUP ;
 scalar_t__ RMSGD ;
 scalar_t__ errno ;
 int install_bpf_program ;
 scalar_t__ ioctl (int,int ,char*) ;
 int * malloc (int) ;
 scalar_t__ nit_setflags (TYPE_2__*) ;
 int open (char const*,int ) ;
 int pcap_cleanup_live_common (TYPE_2__*) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,scalar_t__,char*,...) ;
 int pcap_getnonblock_fd ;
 int pcap_inject_snit ;
 int pcap_read_snit ;
 int pcap_setnonblock_fd ;
 int pcap_stats_snit ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static int
pcap_activate_snit(pcap_t *p)
{
 struct strioctl si;
 struct ifreq ifr;
 int chunksize = CHUNKSIZE;
 int fd;
 static const char dev[] = "/dev/nit";
 int err;

 if (p->opt.rfmon) {




  return (PCAP_ERROR_RFMON_NOTSUP);
 }
 if (p->snapshot <= 0 || p->snapshot > MAXIMUM_SNAPLEN)
  p->snapshot = MAXIMUM_SNAPLEN;

 if (p->snapshot < 96)



  p->snapshot = 96;
 p->fd = fd = open(dev, O_RDWR);
 if (fd < 0 && errno == EACCES)
  p->fd = fd = open(dev, O_RDONLY);
 if (fd < 0) {
  if (errno == EACCES)
   err = PCAP_ERROR_PERM_DENIED;
  else
   err = PCAP_ERROR;
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "%s", dev);
  goto bad;
 }


 if (ioctl(fd, I_SRDOPT, (char *)RMSGD) < 0) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "I_SRDOPT");
  err = PCAP_ERROR;
  goto bad;
 }
 if (ioctl(fd, I_PUSH, "nbuf") < 0) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "push nbuf");
  err = PCAP_ERROR;
  goto bad;
 }

 si.ic_cmd = NIOCSCHUNK;
 si.ic_timout = INFTIM;
 si.ic_len = sizeof(chunksize);
 si.ic_dp = (char *)&chunksize;
 if (ioctl(fd, I_STR, (char *)&si) < 0) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "NIOCSCHUNK");
  err = PCAP_ERROR;
  goto bad;
 }


 strncpy(ifr.ifr_name, p->opt.device, sizeof(ifr.ifr_name));
 ifr.ifr_name[sizeof(ifr.ifr_name) - 1] = '\0';
 si.ic_cmd = NIOCBIND;
 si.ic_len = sizeof(ifr);
 si.ic_dp = (char *)&ifr;
 if (ioctl(fd, I_STR, (char *)&si) < 0) {





  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "NIOCBIND: %s", ifr.ifr_name);
  err = PCAP_ERROR;
  goto bad;
 }


 si.ic_cmd = NIOCSSNAP;
 si.ic_len = sizeof(p->snapshot);
 si.ic_dp = (char *)&p->snapshot;
 if (ioctl(fd, I_STR, (char *)&si) < 0) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "NIOCSSNAP");
  err = PCAP_ERROR;
  goto bad;
 }
 if (nit_setflags(p) < 0) {
  err = PCAP_ERROR;
  goto bad;
 }

 (void)ioctl(fd, I_FLUSH, (char *)FLUSHR);



 p->linktype = DLT_EN10MB;

 p->bufsize = BUFSPACE;
 p->buffer = malloc(p->bufsize);
 if (p->buffer == ((void*)0)) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "malloc");
  err = PCAP_ERROR;
  goto bad;
 }





 p->selectable_fd = p->fd;
 p->dlt_list = (u_int *) malloc(sizeof(u_int) * 2);



 if (p->dlt_list != ((void*)0)) {
  p->dlt_list[0] = DLT_EN10MB;
  p->dlt_list[1] = DLT_DOCSIS;
  p->dlt_count = 2;
 }

 p->read_op = pcap_read_snit;
 p->inject_op = pcap_inject_snit;
 p->setfilter_op = install_bpf_program;
 p->setdirection_op = ((void*)0);
 p->set_datalink_op = ((void*)0);
 p->getnonblock_op = pcap_getnonblock_fd;
 p->setnonblock_op = pcap_setnonblock_fd;
 p->stats_op = pcap_stats_snit;

 return (0);
 bad:
 pcap_cleanup_live_common(p);
 return (err);
}
