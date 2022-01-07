
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pcap_pf {int filtering_in_kernel; } ;
struct bpf_version {scalar_t__ bv_major; scalar_t__ bv_minor; } ;
struct bpf_program {int dummy; } ;
struct TYPE_4__ {scalar_t__ cc; int errbuf; int fd; struct pcap_pf* priv; } ;
typedef TYPE_1__ pcap_t ;
typedef int caddr_t ;


 int BIOCSETF ;
 int BIOCVERSION ;
 scalar_t__ BPF_MAJOR_VERSION ;
 scalar_t__ BPF_MINOR_VERSION ;
 int errno ;
 int fprintf (int ,char*,...) ;
 scalar_t__ install_bpf_program (TYPE_1__*,struct bpf_program*) ;
 scalar_t__ ioctl (int ,int ,int ) ;
 int pcap_fmt_errmsg_for_errno (int ,int,int ,char*) ;
 int stderr ;

__attribute__((used)) static int
pcap_setfilter_pf(pcap_t *p, struct bpf_program *fp)
{
 struct pcap_pf *pf = p->priv;
 struct bpf_version bv;
 if (ioctl(p->fd, BIOCVERSION, (caddr_t)&bv) >= 0) {





  if (bv.bv_major == BPF_MAJOR_VERSION &&
      bv.bv_minor >= BPF_MINOR_VERSION) {



   if (ioctl(p->fd, BIOCSETF, (caddr_t)fp) < 0) {
    pcap_fmt_errmsg_for_errno(p->errbuf,
        sizeof(p->errbuf), errno, "BIOCSETF");
    return (-1);
   }
   fprintf(stderr, "tcpdump: Using kernel BPF filter\n");
   pf->filtering_in_kernel = 1;
   p->cc = 0;
   return (0);
  }
  fprintf(stderr,
     "tcpdump: Requires BPF language %d.%d or higher; kernel is %d.%d\n",
      BPF_MAJOR_VERSION, BPF_MINOR_VERSION,
      bv.bv_major, bv.bv_minor);
 }




 if (install_bpf_program(p, fp) < 0)
  return (-1);





 fprintf(stderr, "tcpdump: Filtering in user process\n");
 pf->filtering_in_kernel = 0;
 return (0);
}
