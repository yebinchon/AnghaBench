
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sock_fprog {int * filter; scalar_t__ len; } ;
struct pcap_linux {int filter_in_userland; } ;
struct bpf_program {int dummy; } ;
struct TYPE_8__ {scalar_t__ bf_len; } ;
struct TYPE_9__ {int errbuf; TYPE_1__ fcode; struct pcap_linux* priv; } ;
typedef TYPE_2__ pcap_t ;


 scalar_t__ ENOPROTOOPT ;
 scalar_t__ EOPNOTSUPP ;
 int PCAP_ERRBUF_SIZE ;
 scalar_t__ USHRT_MAX ;
 scalar_t__ errno ;
 int fix_program (TYPE_2__*,struct sock_fprog*,int) ;
 int fprintf (int ,char*,...) ;
 int free (int *) ;
 scalar_t__ install_bpf_program (TYPE_2__*,struct bpf_program*) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,scalar_t__,char*) ;
 char* pcap_strerror (scalar_t__) ;
 int reset_kernel_filter (TYPE_2__*) ;
 int set_kernel_filter (TYPE_2__*,struct sock_fprog*) ;
 int stderr ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int
pcap_setfilter_linux_common(pcap_t *handle, struct bpf_program *filter,
    int is_mmapped)
{
 struct pcap_linux *handlep;






 if (!handle)
  return -1;
 if (!filter) {
         strlcpy(handle->errbuf, "setfilter: No filter specified",
   PCAP_ERRBUF_SIZE);
  return -1;
 }

 handlep = handle->priv;



 if (install_bpf_program(handle, filter) < 0)

  return -1;





 handlep->filter_in_userland = 1;
 return 0;
}
