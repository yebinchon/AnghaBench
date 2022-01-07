
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct bpf_program {int bf_len; struct bpf_insn* bf_insns; } ;
struct bpf_insn {int k; int jf; int jt; int code; } ;
struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ pcap_t ;


 scalar_t__ get_error_response (int,int *) ;
 scalar_t__ htonl (int) ;
 int htons (int ) ;
 int send_to_fd (int,int,unsigned char*) ;

__attribute__((used)) static int pcap_setfilter_acn(pcap_t *handle, struct bpf_program *bpf) {
 int fd = handle->fd;
 int count;
 struct bpf_insn *p;
 uint16_t shortInt;
 uint32_t longInt;

 send_to_fd(fd, 1, (unsigned char *)"F");
 count = bpf->bf_len;
 longInt = htonl(count);
 send_to_fd(fd, 4, (unsigned char *)&longInt);
 p = bpf->bf_insns;
 while (count--) {
  shortInt = htons(p->code);
  longInt = htonl(p->k);
  send_to_fd(fd, 2, (unsigned char *)&shortInt);
  send_to_fd(fd, 1, (unsigned char *)&p->jt);
  send_to_fd(fd, 1, (unsigned char *)&p->jf);
  send_to_fd(fd, 4, (unsigned char *)&longInt);
  p++;
 }
 if (get_error_response(fd, ((void*)0)))
  return -1;
 return 0;
}
