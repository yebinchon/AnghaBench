
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct pcap_stat {void* ps_ifdrop; void* ps_drop; void* ps_recv; } ;
struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ pcap_t ;
typedef int buf ;


 void* ntohl (int ) ;
 int read_client_nbytes (int ,int,unsigned char*) ;
 int send_to_fd (int ,int,unsigned char*) ;

__attribute__((used)) static int pcap_stats_acn(pcap_t *handle, struct pcap_stat *ps) {
 unsigned char buf[12];

 send_to_fd(handle->fd, 1, (unsigned char *)"S");

 if (read_client_nbytes(handle->fd, sizeof(buf), buf) == -1) return -1;

 ps->ps_recv = ntohl(*(uint32_t *)&buf[0]);
 ps->ps_drop = ntohl(*(uint32_t *)&buf[4]);
 ps->ps_ifdrop = ntohl(*(uint32_t *)&buf[8]);

 return 0;
}
