
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct pcap_dlpi {int dlpi_hd; } ;
struct TYPE_11__ {int device; scalar_t__ promisc; scalar_t__ rfmon; } ;
struct TYPE_12__ {scalar_t__ snapshot; int (* cleanup_op ) (TYPE_2__*) ;int stats_op; int setnonblock_op; int getnonblock_op; int * set_datalink_op; int * setdirection_op; int setfilter_op; int inject_op; int read_op; int fd; int selectable_fd; int errbuf; TYPE_1__ opt; struct pcap_dlpi* priv; } ;
typedef TYPE_2__ pcap_t ;
struct TYPE_13__ {int di_mactype; } ;
typedef TYPE_3__ dlpi_info_t ;
typedef int dlpi_handle_t ;


 int DLPI_ANY_SAP ;
 int DLPI_ELINKNAMEINVAL ;
 int DLPI_ENOLINK ;
 int DLPI_PASSIVE ;
 int DLPI_RAW ;
 int DLPI_SUCCESS ;
 int DL_PROMISC_MULTI ;
 int DL_PROMISC_PHYS ;
 int DL_PROMISC_SAP ;
 int DL_SYSERR ;
 scalar_t__ EACCES ;
 scalar_t__ EPERM ;
 int FLUSHR ;
 int I_FLUSH ;
 scalar_t__ MAXIMUM_SNAPLEN ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int PCAP_ERROR_NO_SUCH_DEVICE ;
 int PCAP_ERROR_PERM_DENIED ;
 int PCAP_ERROR_PROMISC_PERM_DENIED ;
 int PCAP_ERROR_RFMON_NOTSUP ;
 int PCAP_WARNING ;
 int dlpi_bind (int ,int ,int ) ;
 int dlpi_fd (int ) ;
 int dlpi_info (int ,TYPE_3__*,int ) ;
 int dlpi_open (int ,int *,int) ;
 int dlpromiscon (TYPE_2__*,int ) ;
 scalar_t__ errno ;
 int install_bpf_program ;
 scalar_t__ ioctl (int ,int ,int ) ;
 scalar_t__ pcap_alloc_databuf (TYPE_2__*) ;
 int pcap_cleanup_libdlpi (TYPE_2__*) ;
 scalar_t__ pcap_conf_bufmod (TYPE_2__*,scalar_t__) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,scalar_t__,char*) ;
 int pcap_getnonblock_fd ;
 int pcap_inject_libdlpi ;
 int pcap_libdlpi_err (int ,char*,int,int ) ;
 scalar_t__ pcap_process_mactype (TYPE_2__*,int ) ;
 int pcap_read_libdlpi ;
 int pcap_setnonblock_fd ;
 int pcap_stats_dlpi ;

__attribute__((used)) static int
pcap_activate_libdlpi(pcap_t *p)
{
 struct pcap_dlpi *pd = p->priv;
 int status = 0;
 int retv;
 dlpi_handle_t dh;
 dlpi_info_t dlinfo;






 retv = dlpi_open(p->opt.device, &dh, DLPI_RAW|DLPI_PASSIVE);
 if (retv != DLPI_SUCCESS) {
  if (retv == DLPI_ELINKNAMEINVAL || retv == DLPI_ENOLINK)
   status = PCAP_ERROR_NO_SUCH_DEVICE;
  else if (retv == DL_SYSERR &&
      (errno == EPERM || errno == EACCES))
   status = PCAP_ERROR_PERM_DENIED;
  else
   status = PCAP_ERROR;
  pcap_libdlpi_err(p->opt.device, "dlpi_open", retv,
      p->errbuf);
  return (status);
 }
 pd->dlpi_hd = dh;

 if (p->opt.rfmon) {




  status = PCAP_ERROR_RFMON_NOTSUP;
  goto bad;
 }


 if ((retv = dlpi_bind(pd->dlpi_hd, DLPI_ANY_SAP, 0)) != DLPI_SUCCESS) {
  status = PCAP_ERROR;
  pcap_libdlpi_err(p->opt.device, "dlpi_bind", retv, p->errbuf);
  goto bad;
 }
 if (p->snapshot <= 0 || p->snapshot > MAXIMUM_SNAPLEN)
  p->snapshot = MAXIMUM_SNAPLEN;


 if (p->opt.promisc) {
  retv = dlpromiscon(p, DL_PROMISC_PHYS);
  if (retv < 0) {
   if (retv == PCAP_ERROR_PERM_DENIED)
    status = PCAP_ERROR_PROMISC_PERM_DENIED;
   else
    status = retv;
   goto bad;
  }
 } else {

  retv = dlpromiscon(p, DL_PROMISC_MULTI);
  if (retv < 0) {
   status = retv;
   goto bad;
  }
 }


 retv = dlpromiscon(p, DL_PROMISC_SAP);
 if (retv < 0) {




  if (p->opt.promisc)
   status = PCAP_WARNING;
  else {
   status = retv;
   goto bad;
  }
 }


 if ((retv = dlpi_info(pd->dlpi_hd, &dlinfo, 0)) != DLPI_SUCCESS) {
  status = PCAP_ERROR;
  pcap_libdlpi_err(p->opt.device, "dlpi_info", retv, p->errbuf);
  goto bad;
 }

 if (pcap_process_mactype(p, dlinfo.di_mactype) != 0) {
  status = PCAP_ERROR;
  goto bad;
 }

 p->fd = dlpi_fd(pd->dlpi_hd);


 if (pcap_conf_bufmod(p, p->snapshot) != 0) {
  status = PCAP_ERROR;
  goto bad;
 }




 if (ioctl(p->fd, I_FLUSH, FLUSHR) != 0) {
  status = PCAP_ERROR;
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "FLUSHR");
  goto bad;
 }


 if (pcap_alloc_databuf(p) != 0) {
  status = PCAP_ERROR;
  goto bad;
 }





 p->selectable_fd = p->fd;

 p->read_op = pcap_read_libdlpi;
 p->inject_op = pcap_inject_libdlpi;
 p->setfilter_op = install_bpf_program;
 p->setdirection_op = ((void*)0);
 p->set_datalink_op = ((void*)0);
 p->getnonblock_op = pcap_getnonblock_fd;
 p->setnonblock_op = pcap_setnonblock_fd;
 p->stats_op = pcap_stats_dlpi;
 p->cleanup_op = pcap_cleanup_libdlpi;

 return (status);
bad:
 pcap_cleanup_libdlpi(p);
 return (status);
}
