
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct interface_info {int ufdesc; int wfdesc; } ;
struct bpf_version {scalar_t__ bv_major; scalar_t__ bv_minor; TYPE_1__* bf_insns; int bf_len; } ;
struct bpf_program {scalar_t__ bv_major; scalar_t__ bv_minor; TYPE_1__* bf_insns; int bf_len; } ;
typedef int on ;
typedef int cap_rights_t ;
struct TYPE_2__ {int k; } ;


 int AF_INET ;
 int BIOCLOCK ;
 int BIOCSETWF ;
 int BIOCVERSION ;
 scalar_t__ BPF_MAJOR_VERSION ;
 scalar_t__ BPF_MINOR_VERSION ;
 int CAP_WRITE ;
 int IPPROTO_IP ;
 int IPPROTO_UDP ;
 int IP_HDRINCL ;
 int IP_MF ;
 int IP_OFFMASK ;
 int O_WRONLY ;
 int SOCK_RAW ;
 int cap_rights_init (int *,int ) ;
 scalar_t__ caph_rights_limit (int ,int *) ;
 TYPE_1__* dhcp_bpf_wfilter ;
 int dhcp_bpf_wfilter_len ;
 int error (char*) ;
 int htons (int) ;
 int if_register_bpf (struct interface_info*,int ) ;
 scalar_t__ ioctl (int ,int ,struct bpf_version*) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;

void
if_register_send(struct interface_info *info)
{
 cap_rights_t rights;
 struct bpf_version v;
 struct bpf_program p;
 int sock, on = 1;


 info->wfdesc = if_register_bpf(info, O_WRONLY);


 if (ioctl(info->wfdesc, BIOCVERSION, &v) < 0)
  error("Can't get BPF version: %m");

 if (v.bv_major != BPF_MAJOR_VERSION ||
     v.bv_minor < BPF_MINOR_VERSION)
  error("Kernel BPF version out of range - recompile dhcpd!");


 p.bf_len = dhcp_bpf_wfilter_len;
 p.bf_insns = dhcp_bpf_wfilter;

 if (dhcp_bpf_wfilter[7].k == 0x1fff)
  dhcp_bpf_wfilter[7].k = htons(IP_MF|IP_OFFMASK);

 if (ioctl(info->wfdesc, BIOCSETWF, &p) < 0)
  error("Can't install write filter program: %m");

 if (ioctl(info->wfdesc, BIOCLOCK, ((void*)0)) < 0)
  error("Cannot lock bpf");

 cap_rights_init(&rights, CAP_WRITE);
 if (caph_rights_limit(info->wfdesc, &rights) < 0)
  error("Can't limit bpf descriptor: %m");




 if ((sock = socket(AF_INET, SOCK_RAW, IPPROTO_UDP)) == -1)
  error("socket(SOCK_RAW): %m");
 if (setsockopt(sock, IPPROTO_IP, IP_HDRINCL, &on,
     sizeof(on)) == -1)
  error("setsockopt(IP_HDRINCL): %m");
 info->ufdesc = sock;
}
