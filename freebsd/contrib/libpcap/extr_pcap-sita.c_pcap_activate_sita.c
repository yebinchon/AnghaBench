
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int device; scalar_t__ rfmon; } ;
struct TYPE_6__ {scalar_t__ snapshot; int fd; scalar_t__ bufsize; scalar_t__ offset; int selectable_fd; int errbuf; int buffer; int linktype; TYPE_1__ opt; int stats_op; int read_op; int (* cleanup_op ) (TYPE_2__*) ;int setnonblock_op; int getnonblock_op; int * set_datalink_op; int setdirection_op; int setfilter_op; int inject_op; } ;
typedef TYPE_2__ pcap_t ;


 scalar_t__ MAXIMUM_SNAPLEN ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int PCAP_ERROR_RFMON_NOTSUP ;
 int acn_open_live (int ,int ,int *) ;
 int errno ;
 int malloc (scalar_t__) ;
 int pcap_cleanup_acn (TYPE_2__*) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,int ,char*) ;
 int pcap_getnonblock_fd ;
 int pcap_inject_acn ;
 int pcap_read_acn ;
 int pcap_setdirection_acn ;
 int pcap_setfilter_acn ;
 int pcap_setnonblock_fd ;
 int pcap_stats_acn ;

__attribute__((used)) static int pcap_activate_sita(pcap_t *handle) {
 int fd;

 if (handle->opt.rfmon) {




  return PCAP_ERROR_RFMON_NOTSUP;
 }



 handle->inject_op = pcap_inject_acn;
 handle->setfilter_op = pcap_setfilter_acn;
 handle->setdirection_op = pcap_setdirection_acn;
 handle->set_datalink_op = ((void*)0);
 handle->getnonblock_op = pcap_getnonblock_fd;
 handle->setnonblock_op = pcap_setnonblock_fd;
 handle->cleanup_op = pcap_cleanup_acn;
 handle->read_op = pcap_read_acn;
 handle->stats_op = pcap_stats_acn;

 fd = acn_open_live(handle->opt.device, handle->errbuf,
     &handle->linktype);
 if (fd == -1)
  return PCAP_ERROR;
 if (handle->snapshot <= 0 || handle->snapshot > MAXIMUM_SNAPLEN)
  handle->snapshot = MAXIMUM_SNAPLEN;

 handle->fd = fd;
 handle->bufsize = handle->snapshot;



 handle->buffer = malloc(handle->bufsize + handle->offset);
 if (!handle->buffer) {
  pcap_fmt_errmsg_for_errno(handle->errbuf, PCAP_ERRBUF_SIZE,
      errno, "malloc");
  pcap_cleanup_acn(handle);
  return PCAP_ERROR;
 }





 handle->selectable_fd = handle->fd;

 return 0;
}
