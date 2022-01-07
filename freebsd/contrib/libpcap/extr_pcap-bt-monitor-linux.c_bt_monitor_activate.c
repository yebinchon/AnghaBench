
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr_hci {int hci_channel; int hci_dev; int hci_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_5__ {scalar_t__ rfmon; } ;
struct TYPE_6__ {scalar_t__ snapshot; scalar_t__ bufsize; scalar_t__ fd; scalar_t__ selectable_fd; int errbuf; int buffer; int stats_op; int setnonblock_op; int getnonblock_op; int * set_datalink_op; int setdirection_op; int setfilter_op; int inject_op; int read_op; int linktype; TYPE_1__ opt; } ;
typedef TYPE_2__ pcap_t ;
typedef int pcap_bluetooth_linux_monitor_header ;
typedef int opt ;
typedef int addr ;


 int AF_BLUETOOTH ;
 int BTPROTO_HCI ;
 scalar_t__ BT_CONTROL_SIZE ;
 int DLT_BLUETOOTH_LINUX_MONITOR ;
 int HCI_CHANNEL_MONITOR ;
 int HCI_DEV_NONE ;
 scalar_t__ MAXIMUM_SNAPLEN ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int PCAP_ERROR_RFMON_NOTSUP ;
 int SOCK_RAW ;
 int SOL_SOCKET ;
 int SO_TIMESTAMP ;
 scalar_t__ bind (scalar_t__,struct sockaddr*,int) ;
 int bt_monitor_inject ;
 int bt_monitor_read ;
 int bt_monitor_setdirection ;
 int bt_monitor_stats ;
 int errno ;
 int install_bpf_program ;
 int malloc (scalar_t__) ;
 int pcap_cleanup_live_common (TYPE_2__*) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,int ,char*) ;
 int pcap_getnonblock_fd ;
 int pcap_setnonblock_fd ;
 scalar_t__ setsockopt (scalar_t__,int ,int ,int*,int) ;
 scalar_t__ socket (int ,int ,int ) ;

__attribute__((used)) static int
bt_monitor_activate(pcap_t* handle)
{
    struct sockaddr_hci addr;
    int err = PCAP_ERROR;
    int opt;

    if (handle->opt.rfmon) {

        return PCAP_ERROR_RFMON_NOTSUP;
    }
    if (handle->snapshot <= 0 || handle->snapshot > MAXIMUM_SNAPLEN)
        handle->snapshot = MAXIMUM_SNAPLEN;

    handle->bufsize = BT_CONTROL_SIZE + sizeof(pcap_bluetooth_linux_monitor_header) + handle->snapshot;
    handle->linktype = DLT_BLUETOOTH_LINUX_MONITOR;

    handle->read_op = bt_monitor_read;
    handle->inject_op = bt_monitor_inject;
    handle->setfilter_op = install_bpf_program;
    handle->setdirection_op = bt_monitor_setdirection;
    handle->set_datalink_op = ((void*)0);
    handle->getnonblock_op = pcap_getnonblock_fd;
    handle->setnonblock_op = pcap_setnonblock_fd;
    handle->stats_op = bt_monitor_stats;

    handle->fd = socket(AF_BLUETOOTH, SOCK_RAW, BTPROTO_HCI);
    if (handle->fd < 0) {
        pcap_fmt_errmsg_for_errno(handle->errbuf, PCAP_ERRBUF_SIZE,
            errno, "Can't create raw socket");
        return PCAP_ERROR;
    }

    handle->buffer = malloc(handle->bufsize);
    if (!handle->buffer) {
        pcap_fmt_errmsg_for_errno(handle->errbuf, PCAP_ERRBUF_SIZE,
            errno, "Can't allocate dump buffer");
        goto close_fail;
    }


    addr.hci_family = AF_BLUETOOTH;
    addr.hci_dev = HCI_DEV_NONE;
    addr.hci_channel = HCI_CHANNEL_MONITOR;

    if (bind(handle->fd, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
        pcap_fmt_errmsg_for_errno(handle->errbuf, PCAP_ERRBUF_SIZE,
            errno, "Can't attach to interface");
        goto close_fail;
    }

    opt = 1;
    if (setsockopt(handle->fd, SOL_SOCKET, SO_TIMESTAMP, &opt, sizeof(opt)) < 0) {
        pcap_fmt_errmsg_for_errno(handle->errbuf, PCAP_ERRBUF_SIZE,
            errno, "Can't enable time stamp");
        goto close_fail;
    }

    handle->selectable_fd = handle->fd;

    return 0;

close_fail:
    pcap_cleanup_live_common(handle);
    return err;
}
