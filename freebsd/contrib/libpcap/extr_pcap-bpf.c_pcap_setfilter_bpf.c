
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pcap_bpf {int filtering_in_kernel; } ;
struct bpf_program {int dummy; } ;
struct TYPE_4__ {int errbuf; scalar_t__ cc; int fd; int fcode; struct pcap_bpf* priv; } ;
typedef TYPE_1__ pcap_t ;
typedef int caddr_t ;


 int BIOCSETF ;
 scalar_t__ EINVAL ;
 int PCAP_ERRBUF_SIZE ;
 scalar_t__ errno ;
 scalar_t__ install_bpf_program (TYPE_1__*,struct bpf_program*) ;
 scalar_t__ ioctl (int ,int ,int ) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,scalar_t__,char*) ;
 int pcap_freecode (int *) ;

__attribute__((used)) static int
pcap_setfilter_bpf(pcap_t *p, struct bpf_program *fp)
{
 struct pcap_bpf *pb = p->priv;




 pcap_freecode(&p->fcode);




 if (ioctl(p->fd, BIOCSETF, (caddr_t)fp) == 0) {



  pb->filtering_in_kernel = 1;
  p->cc = 0;
  return (0);
 }
 if (errno != EINVAL) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "BIOCSETF");
  return (-1);
 }






 if (install_bpf_program(p, fp) < 0)
  return (-1);
 pb->filtering_in_kernel = 0;
 return (0);
}
