
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bpf_program {int dummy; } ;
struct TYPE_4__ {int errbuf; } ;
typedef TYPE_1__ pcap_t ;


 scalar_t__ install_bpf_program (TYPE_1__*,struct bpf_program*) ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static int septel_setfilter(pcap_t *p, struct bpf_program *fp) {
  if (!p)
    return -1;
  if (!fp) {
    strncpy(p->errbuf, "setfilter: No filter specified",
     sizeof(p->errbuf));
    return -1;
  }



  if (install_bpf_program(p, fp) < 0)
    return -1;

  return (0);
}
